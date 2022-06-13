<%@page import="kr.co.rocketkurly.admin.domain.RevenueDomain"%>
<%@page import="kr.co.rocketkurly.admin.domain.QuestionCntDomain"%>
<%@page import="kr.co.rocketkurly.admin.domain.OrderCntDomain"%>
<%@page import="kr.co.rocketkurly.admin.domain.MemberRegCntDomain"%>
<%@page import="kr.co.rocketkurly.admin.domain.UserHistoryDomain"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="../assets/"
        data-template="vertical-menu-template-free"
>
<head>
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>RoketKurly Admin</title>

    <meta name="description" content=""/>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/badasaja.ico"/>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css"/>

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css"/>
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css"/>
    <link rel="stylesheet" href="../assets/css/demo.css"/>

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.4.1"></script> <!-- chart.js CDN -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>

    <style type="text/css">

        .card-body table tr {
            border: 1px solid #333333;
            height: 90px
        }

        .card-body table tr td {
            border: 1px solid #333333;
            width: 100px
        }
        .buy-now .btn-buy-now{
            box-shadow: none !important;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- Chart.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
    <script type="text/javascript">
    $(function() {
    	
    	  let cardColor, headingColor, axisColor, shadeColor, borderColor;

    	  cardColor = config.colors.white;
    	  headingColor = config.colors.headingColor;
    	  axisColor = config.colors.axisColor;
    	  borderColor = config.colors.borderColor;
    	  
    	const totalRevenueChartEl = document.querySelector('#totalRevenueChart'),
        totalRevenueChartOptions = {
          series: [ 
            {
              name: '방문수',
              data: 
            	  [	
            		  <% List<UserHistoryDomain> visitList = (List<UserHistoryDomain>)request.getAttribute("visitList");
            		  	int visitCount = 0;
            		  	for(int i = 0; i < visitList.size(); i++){
            		  		visitCount = visitList.get(i).getVisit_cnt();
            		  %>	
            		  <%= visitCount %>,
            		  <%		
            		  	}// end for
            		  %>
            	  ]
            },
          ],
          chart: {
            height: 300,
            stacked: true,
            type: 'bar',
            toolbar: { show: false }
          },
          plotOptions: {
            bar: {
              horizontal: false,
              columnWidth: '50%',
              borderRadius: 12,
              startingShape: 'rounded',
              endingShape: 'rounded'
            }
          },
          colors: [config.colors.primary, config.colors.info],
          dataLabels: {
            enabled: false
          },
          stroke: {
            curve: 'smooth',
            width: 6,
            lineCap: 'round',
            colors: [cardColor]
          },
          legend: {
            show: true,
            horizontalAlign: 'left',
            position: 'top',
            markers: {
              height: 8,
              width: 8,
              radius: 12,
              offsetX: -3
            },
            labels: {
              colors: axisColor
            },
            itemMargin: {
              horizontal: 10
            }
          },
          grid: {
            borderColor: borderColor,
            padding: {
              top: 0,
              bottom: -8,
              left: 20,
              right: 20
            }
          },
          xaxis: {
            categories: [ 
            	
            	<%
            	String date = "";
            	for(int i = 0; i < visitList.size() ; i++) {
            	
            		date = visitList.get(i).getLogind_date();
				%>
					'<%= date %>',
				<%           	
            	}
            	%>
            ],
            labels: {
              style: {
                fontSize: '13px',
                colors: axisColor
              }
            },
            axisTicks: {
              show: false
            },
            axisBorder: {
              show: false
            }
          },
          yaxis: {
            labels: {
              style: {
                fontSize: '13px',
                colors: axisColor
              }
            }
          },
          responsive: [
            {
              breakpoint: 1700,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '32%'
                  }
                }
              }
            },
            {
              breakpoint: 1580,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '35%'
                  }
                }
              }
            },
            {
              breakpoint: 1440,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '42%'
                  }
                }
              }
            },
            {
              breakpoint: 1300,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '48%'
                  }
                }
              }
            },
            {
              breakpoint: 1200,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '40%'
                  }
                }
              }
            },
            {
              breakpoint: 1040,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 11,
                    columnWidth: '48%'
                  }
                }
              }
            },
            {
              breakpoint: 991,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '30%'
                  }
                }
              }
            },
            {
              breakpoint: 840,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '35%'
                  }
                }
              }
            },
            {
              breakpoint: 768,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '28%'
                  }
                }
              }
            },
            {
              breakpoint: 640,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '32%'
                  }
                }
              }
            },
            {
              breakpoint: 576,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '37%'
                  }
                }
              }
            },
            {
              breakpoint: 480,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '45%'
                  }
                }
              }
            },
            {
              breakpoint: 420,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '52%'
                  }
                }
              }
            },
            {
              breakpoint: 380,
              options: {
                plotOptions: {
                  bar: {
                    borderRadius: 10,
                    columnWidth: '60%'
                  }
                }
              }
            }
          ],
          states: {
            hover: {
              filter: {
                type: 'none'
              }
            },
            active: {
              filter: {
                type: 'none'
              }
            }
          }
        };
      if (typeof totalRevenueChartEl !== undefined && totalRevenueChartEl !== null) {
        const totalRevenueChart = new ApexCharts(totalRevenueChartEl, totalRevenueChartOptions);
        totalRevenueChart.render();
      }
      
      $("#rvBtn").click(function() {
    	  
    	  if($("#rStartDate").val() == ""){
    		  alert("시작일을 선택해주세요");
    		  return;
    	  }// end if
    	  
    	  if($("#rEndDate").val() == ""){
    		  alert("종료일을 선택해주세요");
    		  return;
    	  }// end if
    	  
    	  $.ajax({
    		  url : "http://localhost/rocketkurly/admin/jsp/revenue.do",
    		  type : "GET",
    		  data : {
    			  stdate: $("#rStartDate").val(),
    			  eddate: $("#rEndDate").val()
    		  },
    		  async : true,
    		  dataType : "text",
    		  error : function(xhr) {
    			  alert(xhr.text + "/" + xhr.status);
    		  },
    		  success : function( revenue ) {
    			  
    			  $("#revenue").html(revenue + "원");
    		  },
    		  
    	  }) // ajax
    	  
      })// click
      
      $("#svBtn").click(function() {
    	  if($("#sStartDate").val() == ""){
    		  alert("시작일을 선택해주세요");
    	  }// end if
    	  
    	  if($("#sEndDate").val() == ""){
    		  alert("종료일을 선택해주세요");
    	  }// end if
    	  
    	  $.ajax({
    		  url : "http://localhost/rocketkurly/admin/jsp/salesvolume.do",
    		  type : "GET",
    		  data : {
    			  stdate: $("#sStartDate").val(),
    			  eddate: $("#sEndDate").val()
    		  },
    		  async : true,
    		  dataType : "text",
    		  error : function(xhr) {
    			  alert(xhr.text + "/" + xhr.status);
    		  },
    		  success : function( salesVolume ) {
    			  
    			  $("#salesVolume").html(salesVolume + "개");
    			  
    		  },
    		  
    	  })// ajax
    	  
      })// click
      
      $("#sendNotice").click(function() {
    	  
    	  if($("#notice").val() == "") {
    		  
    		  alert("공지를 작성 후 작성 가능 합니다.");
    		  return;
    		  
    	  }// end if
    	  
    	  location.href="http://localhost/rocketkurly/admin/jsp/notice.do?notice=" + $("#notice").val();
    	  
      })// click
      
   });// ready
   
    </script>

    
</head>


<body>


<%@ include file="nav.jsp" %>

<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->
        <%@ include file="sidemenu.jsp" %>
        <!-- / Menu -->
        <div class="layout-page">
            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->
                
                <div class="row" style="margin-left: 30px">
                    <!-- 방문자 현황 -->
                    <div style="width: 450px; height: 400px;">
                        <div class="card mb-4" style="width: 450px; height: 400px;">
                            <div class="col-md-8" style="width: 450px">
                                <h5 class="card-header m-0 me-2 pb-3">방문자 현황</h5>
                                <div id="totalRevenueChart"></div>
                            </div>
                        </div>
                    </div>
                    <!--/ 방문자 현황 -->

                    <!-- 일자별 요약 -->
                    <div style="width: 600px ;margin-left: 30px; height: 400px">
                        <div class="card">
							<div class="table-responsive text-nowrap">
							<h5 class="card-header m-0 me-2 pb-3">일자별 요약</h5>
								<table class="table">
									<thead>
										<tr>
											<th>일자</th>
											<th>주문수</th>
											<th>매출액</th>
											<th>가입</th>
											<th>문의</th>
										</tr>
									</thead>
									<tbody class="table-border-bottom-0">
										<% 
										List<MemberRegCntDomain> regCntList = (List<MemberRegCntDomain>)request.getAttribute("regCntList");
										List<OrderCntDomain> orderCntList = (List<OrderCntDomain>)request.getAttribute("orderCntList");
										List<QuestionCntDomain> questionCntList = (List<QuestionCntDomain>)request.getAttribute("questionCntList");
										List<RevenueDomain> revenueList = (List<RevenueDomain>)request.getAttribute("revenueList");
										
										int regCnt = 0;
										int orderCnt = 0;
										int queCnt = 0;
										int revenu = 0;
										
										for(int i = 0; i < visitList.size(); i++){
											date = visitList.get(i).getLogind_date();
											regCnt = regCntList.get(i).getReg_cnt();
											orderCnt = orderCntList.get(i).getOrder_cnt();
											queCnt = questionCntList.get(i).getQue_cnt();
											revenu = revenueList.get(i).getRevenue();
										%>
											<tr>
												<td><%= date %></td>
												<td><%= orderCnt %></td>
												<td><%= revenu %></td>
												<td><%= regCnt %></td>
												<td><%= queCnt %></td>
											</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
                    </div>
                    <!--/ 일자별 요약 -->
                </div>

                <div class="row" style="margin: 20px">
                    <!-- 매출 조회 -->
                    <div class="card mb-4" style="width: 500px; height: 730px;">
                        <div class="col-md-8" style="width: 450px">
                            <h5 class="card-header m-0 me-2 pb-3">매츨 조회</h5>
                            <div style="padding: 20px">
                            	<label>매출 조회</label><br/> 
                               <label style="margin-top: 15px;">시작일</label><input class="form-control" id="rStartDate" type="date" id="html5-date-input"/>
                               <label style="margin-top: 10px;">종료일</label><input class="form-control" id="rEndDate" type="date" id="html5-date-input" style="margin-top: 10px;"/>
                                <div class="input-group" style="margin-top: 20px">
                                    <span style="width: 400px" id="revenue" class="input-group-text" >0원</span>
                                </div>
                                <button type="button" id="rvBtn" class="btn btn-info" style="margin-top: 15px;">매출액 조회</button>
                            </div>
                            <div style="padding: 20px">
                            	<label>주문수량 조회</label><br/>
                                <label style="margin-top: 15px;">시작일</label><input class="form-control" id="sStartDate" type="date" id="html5-date-input" />
                                <label style="margin-top: 10px;">종료일</label><input class="form-control" id="sEndDate" type="date" id="html5-date-input" style="margin-top: 10px;"/>
                                <div class="input-group" style="margin-top: 15px">
                                    <span style="width: 400px" id="salesVolume" class="input-group-text" >0개</span>
                                </div>
                                <button type="button" id="svBtn" class="btn btn-info" style="margin-top: 15px;">주문량 조회</button>
                            </div>
                        </div>
                    </div>
                    <!--/매출 조회-->

                    <!-- 공지사항 -->
                    <div class="card mb-4" style="width: 500px; height: 730px; margin-left: 20px">
                        <div class="col-md-8" style="width: 450px;">
                            <h5 class="card-header m-0 me-2 pb-3">공지사항</h5>
							<c:forEach var="notice" items="${ noticeList }" begin="0" end="7" step="1">
	                            <div style="margin-left: 20px; margin-bottom: 8px">
	                               	<input type="text" class="form-control" readonly="readonly" style="width: 450px; background-color: #ffffff" value="${ notice.notice_main }">
	                                <span style="margin-top: 10px; font-size: 10px;">${ notice.sign_date }</span>
	                            </div>
							</c:forEach>  
							
							 <input type="text" style="float: left; margin-left: 15px; margin-top: 25px; width: 350px" class="form-control" id="notice"  name="notice" placeholder="공지를 입력해주세요." autofocus/>  
                             <button style="float: right; margin-top: 25px;" id="sendNotice" class="btn-dark">작성</button> 
 
                        </div>
                    </div>

                    <!-- /공지사항 -->

                </div>

                <div class="buy-now">
                    <a
                            href=""
                            target="_blank"
                            class="btn-buy-now"
                    ><img style="width: 60px" src="../assets/img/messenger.png"></a
                    >
                </div>

            </div>
        </div>
    </div>
</div>


<!-- / Content -->


<script type="text/javascript">


</script>


<!-- / Layout wrapper -->

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="../assets/vendor/libs/jquery/jquery.js"></script>
<script src="../assets/vendor/libs/popper/popper.js"></script>
<script src="../assets/vendor/js/bootstrap.js"></script>
<script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="../assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->
<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="../assets/js/main.js"></script>

<!-- Page JS -->
<script src="../assets/js/dashboards-analytics.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

</body>
</html>