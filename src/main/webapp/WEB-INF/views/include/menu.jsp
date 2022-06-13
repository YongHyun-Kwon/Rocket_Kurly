    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="js/jquery-3.3.1.min.js"></script>
<style type="text/css">
#vegi:hover{
				color: #7fad39;
				}
#crops:hover{
				color: #7fad39;
				}
#seafood:hover{
				color: #7fad39;
				}
#livestock:hover{
				color: #7fad39;
				}
.c-category{
				display: none;
    			width: 240px!important;
    			text-align: left!important;
    			left: -15px!important;
			  }
a:hover {
    font-weight: 700;
    color: #7fad39;
}
</style>
<script type="text/javaScript">

$(function () {
	
		/* 호버시 메뉴 뜨게 하기 */
		  $('#p-category > li').mouseenter(function(){
		        let menu_i = $(this).index();
		        

		            $('.c-category').css({ //모두 display:none 시킨 후 
		                display:'none'
		            }).eq($(this).index()).css({ // 해당 인덱스 넘버만 보여질 수 있도록 한다.
		                display:'block'
		            })
		      
		    });//mouseenter
		
		    $('#p-category > li').click(function(){
		        let menu_i = $(this).index();

		      
		            $('.c-category').eq($(this).index()).css({
		                display:'none'

		            })
		      
		    })//click
		    
		     $('.c-category').mouseenter(function(){
		        $('.c-category').eq($(this).index()).css({
		            display:'block'
		        })
		    
		     })//mouseenter
		    
		    $('.hero__categories__all').click(function(){
		        $('.c-category').css({
		            display:'none'

		        })
		    })//click
		
})//ready

</script>
     <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories" >
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>전체 카테고리</span>
                        </div>
                        <ul id="p-category">
                        <c:forEach var="cate" items="${cateP}">
                            <li><a href="shop-grid.do?p_category_id=${cate.p_category_id}&&p_category_name=${cate.p_category_name}&&c_category_id=${fn:substring(cate.p_category_id,0,2)}0&&current_category=${fn:substring(cate.p_category_id,0,2)}0">
                            ${cate.p_category_name}</a></li>
                        </c:forEach> 
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
                
                <!-- 중분류 메뉴 -->
                <c:forEach var="p" items="${cateP}">
                	<div class="hero__categories"  id="vegi-menu">
               		<ul class="c-category">
                  		<c:forEach var="c" items="${cateC}">
							<c:if test = "${fn:contains(c.c_category_id,fn:substring(p.p_category_id,0,2))}">
                      			<li><a href="shop-grid.do?p_category_id=${p.p_category_id}&&p_category_name=${p.p_category_name}&&c_category_id=${c.c_category_id}&&current_category=${c.c_category_id}">
                          				 ${c.sub_name}</a></li>
							</c:if>
                   		</c:forEach>
                	</ul>
                	</div>
                </c:forEach>

                <!-- 중분류 메뉴 끝 -->
                
                <!--검색 영역  -->
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <input type="text" placeholder="검색어를 입력해주세요">
                                <button type="submit" class="site-btn">검색</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <div class="dropdown-menu">
    <ul>
    	<li>친환경</li> 
		<li>고구마·감자·당근</li>
		<li>시금치·쌈채소·나물</li>
		<li>브로콜리·파프리카·양배추</li>
		<li>양파·대파·마늘·배추</li>
		<li>오이·호박·고추</li>
		<li>냉동·이색·간편채소</li>
		<li>콩나물·버섯</li>
    </ul>
    </div>
    <!-- Hero Section End -->