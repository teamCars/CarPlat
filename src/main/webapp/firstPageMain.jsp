<%--
  Created by IntelliJ IDEA.
  User: 半糖去冰
  Date: 2021/6/2
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- 轮播图 -->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/firstPage/throundsCar.jpg" style="height: 450px;margin-top:85px;" onclick="JavaScript:window.location.href = '平台介绍.html'">
            </div>
            <div class="item">
                <img src="img/firstPage/newPeople.png" style="height: 450px;margin-top:85px;" onclick="JavaScript:window.location.href = '注册页面.html'">
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<!-- 网站提供的服务的图片 -->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div id="serviceImg">
        <div id="serviceImg01" onclick="JavaScript:window.location.href = '租车页面.html'">
            <h3>短租服务，灵活自如</h3>
            <br>
            <p>无论您是想约会、自驾游、踏青还是商务接待….</p>
            <p>我们随时恭候您的光临，随取随还，灵活自如。</p>
        </div>
        <div id="serviceImg02" onclick="JavaScript:window.location.href = '租车页面.html'">
            <h3>超值长租，实惠便捷</h3>
            <br>
            <p>如果您常租车，我们建议您可以尝试长租，按月起租，实惠方便。</p>
        </div>
        <div id="serviceImg03" onclick="JavaScript:window.location.href = '出车界面.html'">
            <h3>成为车主，赚取收益</h3>
            <br>
            <p>出租你的爱车，利用车辆闲置时间为你获得额外收益；我们提供全面保障，让你的爱车共享无忧！</p>
        </div>
    </div>
</div>
<!-- 成就数据 -->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div id="userMath">
        <ul>
            <li>
                <h3><span>150+</span></h3>
                <p>业务覆盖超150个城市</p>
            </li>
            <li>
                <h3><span>10,000,000+</span></h3>
                <p>注册用户突破1000万</p>
            </li>
            <li>
                <h3><span>300,000+</span></h3>
                <p>注册车辆超过30万辆</p>
            </li>
            <li style="margin-right: 0px;">
                <h3><span>10,000+</span></h3>
                <p>车型逾10000款</p>
            </li>
        </ul>
    </div>
</div>
<!-- 用车图片-->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div id="actionSize">
        <div id="actionSize01">
            <h3>自驾出游</h3>
            <br>
            <p>周末带着全家租一辆宽敞舒适的大车，</p>
            <p>如别克GL8、途观、JEEP等自驾出游，</p>
            <p>游遍山川美景，游遍大江南北，</p>
            <p>收获满满的幸福。</p>
        </div>
        <div id="actionSize02">
            <h3>情侣约会</h3>
            <br>
            <p>周末你会和你的TA去哪呢，</p>
            <p>踏青自驾是个不错的选择，</p>
            <p>甲壳虫、mini、smart都会为你</p>
            <p>平淡的周末添一抹亮色。</p>
        </div>
        <div id="actionSize03">
            <h3>商务接待</h3>
            <br>
            <p>我们有丰富的商务车型，</p>
            <p>如奔驰、别克、宝马等，</p>
            <p>帮助您接待业务往来的客户，</p>
            <p>助您在商业洽谈中取得成功。</p>
        </div>
        <div id="actionSize04">
            <h3>体验个性车</h3>
            <br>
            <p>自己的车开腻了，</p>
            <p>想要尝试体验更多新鲜感，</p>
            <p>即刻预订保时捷911、特斯拉、牧马人、</p>
            <p>大黄蜂等丰富车型满足你的小欲望吧。</p>
        </div>
    </div>
</div>
<!-- 服务优势文本-->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div id="serviceGoodness">
        <div id="serviceGoodness01">
            <div id="serviceGoodness11">
                <h3>我们竭诚为您服务</h3>
            </div>
            <div id="serviceGoodness02">
                <div id="serviceGoodness021">
                    <div class="imageservice">
                        <img src="img/firstPage/service02.png" />
                    </div>
                    <div class="spanservice">
                        <p style="font-size: 16px;font-weight: 500;">我们负责取还车，您负责享受驾驶乐趣</p>
                        <br>
                        <span style="font-size: 12px;">在您需要之时，我们一呼百应，送车还车专人上门让您足不出户乐享其乘。（该服务在部分地区推出)</span>
                    </div>

                </div>
                <div id="serviceGoodness022">
                    <div class="imageservice">
                        <img src="img/firstPage/service03.png" />
                    </div>
                    <div class="spanservice">
                        <p style="font-size: 16px;font-weight: 500;">高额度保障，为您的安全出行护航</p>
                        <br>
                        <span style="font-size: 12px;">在租车期间，您可享有我们高额度全方位保障，消除您的后顾之忧。</span>
                    </div>
                </div>
                <div id="serviceGoodness023">
                    <div class="imageservice">
                        <img src="img/firstPage/service03.png" />
                    </div>
                    <div class="spanservice">
                        <p style="font-size: 16px;font-weight: 500;">您可以用更低的价格租到心仪的车辆</p>
                        <br>
                        <span style="font-size: 12px;">您选择的车辆全部来自凹凸严格审核把关的车主私车，无论您希望经济出行，亦或是奢华体验，我们都用心满足您的要求。</span>
                    </div>
                </div>
                <div id="serviceGoodness024">
                    <div class="imageservice">
                        <img src="img/firstPage/service04.png" />
                    </div>
                    <div class="spanservice">
                        <p style="font-size: 16px;font-weight: 500;">押金减免高达70%，让您租车更省钱</p>
                        <br>
                        <span style="font-size: 12px;">我们建立严谨的信用机制，只需简单几步验证，押金减免高达70%，世界那么大，随便您看看。</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- 明星宣传视频-->
<!-- 用户故事-->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div id="userStory">

    </div>
</div>
<!-- 成为车主-->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div id="carOder">
        <p>成为我们的车主，赚取收入</p>
        <ul>
            <li>
                <img src="img/firstPage/crdoder02.png"  style="margin-left:110px;">
                <br><br>
                <br>
                <p style="font-size: 18px;color: white;">高额度保障，为您的安全出行护航</p>
                <p style="font-size:12px; color: #ccc; margin-left:60px;">在租车期间，您与租客一样，</p>
                <p style="font-size:12px; color: #ccc;margin-left:60px;">可享有我们高额度全方位保障</p>
            </li>
            <li>
                <img src="img/firstPage/caroder03.png"  style="margin-left:110px;">
                <br><br>
                <br>
                <p style="font-size: 18px;color: white;">租客严格认证，只给爱惜车的人驾驶</p>
                <p style="font-size:12px; color: #ccc; margin-left:110px;">认证租客的身份，</p>
                <p style="font-size:12px; color: #ccc;margin-left:40px;">建立完善的车主对租客具有完备的评价体系，</p>
                <p style="font-size:12px; color: #ccc;margin-left:110px;">且时时更新。</p>
            </li>
            <li>
                <img src="img/firstPage/caroder04.png"  style="margin-left:110px;">
                <br><br>
                <br>
                <p style="font-size: 18px;color: white;">全方位定位系统，爱车行踪一手掌握</p>
                <p style="font-size:12px; color: #ccc; margin-left:80px;">凹凸为您安装全方位定位系统,</p>
                <p style="font-size:12px; color: #ccc;margin-left:60px;">精准定位车辆，随时掌控车辆信息。</p>
                <p style="font-size:12px; color: #ccc;margin-left:80px;">行程全掌握，爱车共享无忧。</p>
            </li>
        </ul>
        <form>
            <input type="button" value="开始赚钱" onclick="JavaScript:window.location.href = '出车界面.html'" />
        </form>
    </div>
</div>


