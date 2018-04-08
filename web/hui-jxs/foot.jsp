<script type="text/javascript">
$(document).ready(function(){
	$('body').on("click",'.heart',function(){
		var A=$(this).attr("id");
		var B=A.split("like");
		var messageID=B[1];
		var C=parseInt($("#likeCount"+messageID).html());
		$(this).css("background-position","");
		var D=$(this).attr("rel");
		if(D === 'like') { 
			$(this).addClass("heartAnimation").attr("rel","unlike");
			$.post(
				"${pageContext.request.contextPath}/like/addlike",
				{
					"loupan.idString":${loupan.idString}
				},
				function(data){
					if(data>0){
						alert("不能重复点赞！");
						return;
					}else{
						$("#likeCount"+messageID).html(C+1);
					}
				},
				"json"
			);
		}else{
				
			if(($("#likeCount"+messageID).html())-1<=0){
				$("#likeCount"+messageID).html(0);
			}		
			$("#likeCount"+messageID).html(C-1);
			$(this).removeClass("heartAnimation").attr("rel","like");
			$(this).css("background-position","left");
			$.post(
				"${pageContext.request.contextPath}/like/deletelike",
				{
					"loupan.idString":${loupan.idString}
				},
				function(data){
					alert(data+"");
				},
				"json"
			);
		}
	});

});
</script>