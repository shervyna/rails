$(function() {　//←消さないこと


//ログアウトモーダル表示コード開始---------------------------------------------------------

  $('#logout-show').click(function(){
    
    $('#logout-modal').fadeIn();
    
  })
  	  
    $('.close-modal').click(function(){
    
    $('#logout-modal').fadeOut();
    
  })
  	  
    //if($('#logout-modal').is(':hidden')){
        
  //  }else{
    //	$(document).on('click', function(e) {
    //		if(!$(e.target).closest('#logout-modal').length && !$(e.target).closest('#logout-show').length){
     //   		$('#logout-modal').fadeOut();
    //		}else{
    //	 
      //  		$('#logout-modal').fadeOut();
    //	}
	//	})
//	}
//ログインモーダル表示コード終了---------------------------------------------------------

//投稿完了モーダル表示コード開始---------------------------------------------------------

  $('#post-complete-show').click(function(){
    
    $('#post-complete-modal').fadeIn();
    
  })
  	  
    $('.close-modal').click(function(){
    
    $('#post-complete--modal').fadeOut();
    
  })
//投稿完了モーダル表示コード終了---------------------------------------------------------





});//←消さないことvar distance-top=off_top+50; 
