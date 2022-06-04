<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div class="card" style="margin-top: 30px;height: 400px">
                        <!-- Search -->
                            <div>
                                <h5 class="card-header" style="height:30px; display: inline-block">회원 상세 정보</h5>
                            </div>
                        <!-- /Search -->
                        <div style="width: 800px;margin-top: ">
                            <div>
                            </div>
                            <div>
                                <div class="customer-line" style="display: flex;;margin: 10px">
                                <div>
                                    <span class="app-brand-text demo fw-bolder ms-2" id="customer_nickcname">닉네임</span>
                                </div>
                                    <div class="customer-info">아이디 : ${memberData.member_id }</div>
                                    <div class="customer-info">이름 : </div>
                                    <div class="customer-info">나이 : </div>
                                    <div class="customer-info">이메일 : </div>
                                    <div class="customer-info">가입일 : </div>
                                </div>
                                <div class="customer-line" style="display: flex;;margin: 10px">
                                    <div class="customer-info">거주지 : </div>
                                    <div class="customer-info">전화번호 : </div>
                                    <div class="customer-info">구매금액 : </div>
                                    <div class="customer-info">방문 수 : </div>
                                    <div style="float: right;margin: 10px"><span class="customer-info">계정 상태</span>
                                        <button type="button" class="btn btn-outline-secondary dropdown-toggle" id="ustatus" data-bs-toggle="dropdown" style="margin-left: 10px; padding:0px" >정상계정</button>
                                         <input type="hidden" name="ust" id="ust"/>
                                        <ul class="dropdown-menu">
                                            <li class="ustatus"><a class="dropdown-item" href="javascript:void(0);">정상계정</a></li>
                                            <li class="ustatus"><a class="dropdown-item" href="javascript:void(0);">휴면계정</a></li>
                                            <li class="ustatus"><a class="dropdown-item" href="javascript:void(0);">정지계정</a></li>
                                            <li class="ustatus"><a class="dropdown-item" href="javascript:void(0);">탈퇴계정</a></li>
                                        </ul></div>
                                </div>
                            </div>
                        </div>
                    </div>