<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ page isELIgnored="false" %>
<h1>强化计算器</h1>
<h3>1、输入价格</h3>

<form>
	<input type="number" min="0" placeholder="输入突破石价格" name="leapstone_price" value="">
	<input type="number" min="0" placeholder="输入强化石x10价格" name="stone_price">
	<input type="number" min="0" placeholder="输入爆米花价格" name="oreha_price" value="">
	<input type="number" min="0" placeholder="输入狗粮x500价格" name="shard_price" value="">
	<input type="number" min="0" placeholder="输入绿添加石价格" name="green_price" value="">
	<input type="number" min="0" placeholder="输入蓝添加石价格" name="blue_price" value="">
	<input type="number" min="0" placeholder="输入紫添加石价格" name="purple_price" value="">
	<input type="number" min="0" placeholder="输入银币x1000价格" name="silver_price" value="">
	<input type="submit">


<h2>2、选择计算目标</h2>
<a href="#" type="button" name="button_1302" role="button" onclick="isActive1()" class="active1">
	T3(1302)
</a>
<a href="#" type="button" name="button_1370" role="button" onclick="isActive1()">
	T3(1370)
</a>
<a href="#" type="button" name="button_weapon" role="button" onclick="isActive2()" class="active2">
	武器
</a>
<a href="#" type="button" name="button_armor" role="button" onclick="isActive2()">
	护甲
</a>
<select id="select3">
	<option selected="">请选择</option>
	<option value="7" >+6 到 +7</option>
	<option value="8" >+7 到 +8</option>
	<option value="9" >+8 到 +9</option>
	<option value="10" >+9 到 +10</option>
	<option value="11" >+10 到 +11</option>
	<option value="12" >+11 到 +12</option>
	<option value="13" >+12 到 +13</option>
	<option value="14" >+13 到 +14</option>
	<option value="15" >+14 到 +15</option>
</select>
<a href="${pageContext.request.contextPath}/calc/honingCalc" type="submit" class="button_start" role="button" onclick="start()">
	开始计算
</a>

</form>
<h2>3、计算结果${solution}</h2>
<h2>3、计算结果${leasttimes}</h2>
<h2>3、计算结果${cheapercost}</h2>
<h2>3、计算结果${costeverytimes}</h2>
<h2>3、计算结果${totalcost}</h2>

<%--<form action="${pageContext.request.contextPath}/calc/honingCalc" method="post">--%>
<%--	&lt;%&ndash;表明是第1个User对象的username age&ndash;%&gt;--%>
<%--&lt;%&ndash;		<input type="text"  name="GS">&ndash;%&gt;--%>
<%--		<input type="text" name="button_weapon"value="武器" >--%>
<%--		<input type="submit" value="提交">--%>
<%--</form>--%>


平均强化多少次成功（数学期望）：

是否加入添加石：

（对比无添加），可以帮你节省：

每次强化等价于花费多少钱：

<style type="text/css">

	.button{
		width: 140px;
		line-height: 38px;
		text-align: center;
		font-weight: bold;
		color: #fff;
		text-shadow:1px 1px 1px #333;
		border-radius: 5px;
	}
	.active1{
		background-color: #ff914d;
		border: none;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		border-radius: 7px;
	}

</style>
<style type="text/css">

	.button{
		width: 140px;
		line-height: 38px;
		text-align: center;
		font-weight: bold;
		color: #fff;
		text-shadow:1px 1px 1px #333;
		border-radius: 5px;
	}
	.button_start{
		background-color: #ff914d;
		border: none;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		border-radius: 7px;
	}

</style>
<style type="text/css">
	.active2{
		background-color: #ff914d;
		border: none;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		border-radius: 7px;
	}
</style>

<style>
	.active1{
		background-color:green;
	}
</style>
<style>
	.active2{
		background-color:orange;
	}
</style>

<script>
	function isActive1(){
		var obj=document.elementFromPoint(event.clientX,event.clientY);
		//选中所有带active1类的元素
		var el=document.getElementsByClassName("active1")
		//删除active1元素
		for(let i = 0; i<el.length;i++){
			el[i].classList.remove("active1")
		}
		//添加选中元素的active1类

		obj.classList.add("active1")
	}
	function isActive2(){
		var obj=document.elementFromPoint(event.clientX,event.clientY);
		//选中所有带active1类的元素
		var el=document.getElementsByClassName("active2")
		//删除active1元素
		for(let i = 0; i<el.length;i++){
			el[i].classList.remove("active2")
		}
		//添加选中元素的active1类

		obj.classList.add("active2")
	}
</script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/axios-0.18.0.js"></script>
<script src="js/jquery-3.3.1.js"></script>

<script>

	function start(){
		var select1 = document.getElementsByClassName("active1")
		var select2 = document.getElementsByClassName("active2")
		var select1_value = select1[0].name
		var select2_value = select2[0].name
		//获取下拉菜单的选项
		var selectTest = document.getElementById("select3")
		var selectIndex = selectTest.selectedIndex
		var selectValue = selectTest.options[selectIndex].value
		if(select1_value=="button_1302"){
			if(selectValue=="7"){
				var GS = "1325"}
			if(selectValue=="8"){
				var GS = "1330"}
			if(selectValue=="9"){
				var GS = "1335"}
			if(selectValue=="10"){
				var GS = "1340"}
			if(selectValue=="11"){
				var GS = "1345"}
			if(selectValue=="12"){
				var GS = "1350"}
			if(selectValue=="13"){
				var GS = "1355"}
			if(selectValue=="14"){
				var GS = "1360"}
			if(selectValue=="15"){
				var GS = "1365"}
		}
		if(select1_value=="button_1370"){
			if(selectValue=="7"){
				var GS = "1370"}
			if(selectValue=="8"){
				var GS = "1375"}
			if(selectValue=="9"){
				var GS = "1380"}
			if(selectValue=="10"){
				var GS = "1385"}
			if(selectValue=="11"){
				var GS = "1390"}
			if(selectValue=="12"){
				var GS = "1395"}
			if(selectValue=="13"){
				var GS = "1400"}
			if(selectValue=="14"){
				var GS = "1405"}
			if(selectValue=="15"){
				var GS = "1410"}
			if(selectValue=="16"){
				var GS = "1415"}
			if(selectValue=="17"){
				var GS = "1430"}
			if(selectValue=="18"){
				var GS = "1445"}
			if(selectValue=="19"){
				var GS = "1460"}
			if(selectValue=="20"){
				var GS = "1475"}
		}
		if(select2_value=="button_weapon"){
			var item_type = "weapon"
		}
		if(select2_value=="button_armor"){
			var item_type = "armor"
		}


		// 获取单价
		var leapstone_price = document.getElementsByName("leapstone_price")[0].value
		var stone_price = document.getElementsByName("stone_price")[0].value
		var oreha_price = document.getElementsByName("oreha_price")[0].value
		var shard_price = document.getElementsByName("shard_price")[0].value
		var green_price = document.getElementsByName("green_price")[0].value
		var blue_price = document.getElementsByName("blue_price")[0].value
		var purple_price = document.getElementsByName("purple_price")[0].value
		var silver_price = document.getElementsByName("silver_price")[0].value
		var allprice = [GS,item_type,leapstone_price,stone_price,oreha_price,shard_price,green_price,blue_price,purple_price,silver_price]


		// document.getElementsByName("GS")[0].value = GS


		// var json = JSON.stringify(allprice);
		// $.ajax({
		// 	// url: "http://localhost:8023/lostArkLL_war/calc/honingCalc", //后端地址（含参数）
		// 	type: "post",       //提交方式
		// 	dataType: "JSON",       //规定请求成功后返回的数据
		// 	data:json,
		// 	success: function (data) {
		// 		//请求成功之后进入该方法，data为成功后返回的数据
		// 	},
		// 	error: function (errorMsg) {
		// 		//请求失败之后进入该方法，errorMsg为失败后返回的错误信息
		// 	}
		// });
		// var jsonArray = [{a:'22',b:'33'},{c:'44'}]
		// axios({
		// 	method:'post',
		// 	url:'src/main/java/controller/CalcController.java',
		// 	data:jsonArray
		//
		// })
		// alert(json)
		//axios.post('/calc/mariCalc',
		//		{"name":json})


	}




</script>
<%--<form action="${pageContext.request.contextPath}/calc/honingCalc" method="post">--%>
<%--	<input type="submit" name="GS" value=1222111>--%>
<%--</form>--%>

<%--<form>--%>
<%--	<input type="number" min="0" placeholder="输入突破石价格" name="leapstone_price" value="">--%>
<%--	<input type="number" min="0" placeholder="输入强化石x10价格" name="stone_price">--%>
<%--	<input type="number" min="0" placeholder="输入爆米花价格" name="oreha_price" value="">--%>
<%--	<input type="number" min="0" placeholder="输入狗粮x500价格" name="shard_price" value="">--%>
<%--	<input type="number" min="0" placeholder="输入绿添加石价格" name="green_price" value="">--%>
<%--	<input type="number" min="0" placeholder="输入蓝添加石价格" name="blue_price" value="">--%>
<%--	<input type="number" min="0" placeholder="输入紫添加石价格" name="purple_price" value="">--%>
<%--	<input type="number" min="0" placeholder="输入银币x1000价格" name="silver_price" value="">--%>

<%--	<h2>2、选择计算目标</h2>--%>
<%--	<input type="text" name="button_1302" value="1302">--%>
<%--	<input type="text" name="button_1370" value="1370">--%>
<%--	<input type="text" name="button_weapon" value="武器">--%>
<%--	<input type="text" name="button_armor" value="护甲">--%>
<%--	<select id="GS">--%>
<%--		<option selected="">请选择</option>--%>
<%--		<option value="7" >+6 到 +7</option>--%>
<%--		<option value="8" >+7 到 +8</option>--%>
<%--		<option value="9" >+8 到 +9</option>--%>
<%--		<option value="10" >+9 到 +10</option>--%>
<%--		<option value="11" >+10 到 +11</option>--%>
<%--		<option value="12" >+11 到 +12</option>--%>
<%--		<option value="13" >+12 到 +13</option>--%>
<%--		<option value="14" >+13 到 +14</option>--%>
<%--		<option value="15" >+14 到 +15</option>--%>
<%--	</select>--%>
<%--	<a href="${pageContext.request.contextPath}/calc/honingCalc" type="submit" class="button_start" role="button" onclick="start()">--%>
<%--		开始计算--%>
<%--	</a>--%>

<%--</form>--%>