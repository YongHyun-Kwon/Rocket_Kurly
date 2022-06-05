    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		      
		    });
		    $('#p-category > li').click(function(){
		        let menu_i = $(this).index();

		      
		            $('.c-category').eq($(this).index()).css({
		                display:'none'

		            })
		      
		    })//
		    
		    $('.c-category').mouseenter(function(){
		        $('.c-category').eq($(this).index()).css({
		            display:'block'
		        })
		    })
		    $('.hero__categories__all').click(function(){
		        $('.c-category').css({
		            display:'none'

		        })
		    })
		
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
                            <li><a href="shop-details.do" id="C_category_id">채소</a></li>
                            <li><a href="#" id="crops">과일·견과·쌀</a></li>
                            <li><a href="#" id="seafood">수산·해산·건어물</a></li>
                            <li><a href="#" id="livestock">정육·계란</a></li>
                        </ul>
                    </div>
                </div>
                
                <!-- 중분류 메뉴 -->
                <div class="hero__categories"  id="vegi-menu">
                     <ul class="c-category">
                           <li><a href="#" id="" >친환경</a></li>
                           <li><a href="#" id="">고구마·감자·당근</a></li>
                           <li><a href="#" id="">시금치·쌈채소·나물</a></li>
                           <li><a href="#" id="">브로콜리·파프리카·양배추</a></li>
                           <li><a href="#" id="">양파·대파·마늘·배추</a></li>
                           <li><a href="#" id="">오이·호박·고추</a></li>
                           <li><a href="#" id="">냉동·이색·간편채소</a></li>
                           <li><a href="#" id="">콩나물·버섯</a></li>
                    </ul>
                </div>
                <div class="hero__categories"  id="crops-menu">
                     <ul class="c-category">
                           <li><a href="#" id="" >친환경</a></li>
                           <li><a href="#" id="">제철과일</a></li>
                           <li><a href="#" id="">국산과일</a></li>
                           <li><a href="#" id="">수입과일</a></li>
                           <li><a href="#" id="">간편과일</a></li>
                           <li><a href="#" id="">냉동·건과일</a></li>
                           <li><a href="#" id="">견과류</a></li>
                           <li><a href="#" id="">쌀·잡곡</a></li>
                    </ul>
                </div>
                <div class="hero__categories"  id="sea-menu">
                     <ul class="c-category">
                           <li><a href="#" id="" >제철수산</a></li>
                           <li><a href="#" id="">생선류</a></li>
                           <li><a href="#" id="">굴비·반건류 </a></li>
                           <li><a href="#" id="">오징어·낙지·문어</a></li>
                           <li><a href="#" id="">새우·게·랍스터 </a></li>
                           <li><a href="#" id="">해산물·조개류 </a></li>
                           <li><a href="#" id="">수산가공품 </a></li>
                           <li><a href="#" id="">김·미역·해조류</a></li>
                           <li><a href="#" id="">건어물·다시팩</a></li>
                    </ul>
                </div>
                <div class="hero__categories"  id="live-menu">
                     <ul class="c-category">
                           <li><a href="#" id="" >국내산 소고기</a></li>
                           <li><a href="#" id="">수입산 소고기</a></li>
                           <li><a href="#" id="">돼지고기</a></li>
                           <li><a href="#" id="">계란류</a></li>
                           <li><a href="#" id="">닭·오리고기</a></li>
                           <li><a href="#" id="">양념육·돈까스</a></li>
                           <li><a href="#" id="">양고기</a></li>
                    </ul>
                </div>
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