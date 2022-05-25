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
</style>
<script type="text/javaScript">

$(function () {
	$('#vegi').click(function(e){
		e.preventDefault();
		$("dropmenu").show();
		
		});//vegiClick

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
                        <ul>
                            <li><a href="#" id="vegi" >채소</a></li>
                            <li><a href="#" id="crops">과일·견과·쌀</a></li>
                            <li><a href="#" id="seafood">수산·해산·건어물</a></li>
                            <li><a href="#" id="livestock">정육·계란</a></li>
                        </ul>
                    </div>
                </div>
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