$( document ).on('turbolinks:load', function() {
  
  function setCookie(cname, cvalue, exdays) {
      var d = new Date();
      d.setTime(d.getTime() + (exdays*24*60*60*1000));
      var expires = "expires="+ d.toUTCString();
      document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
  }

  function getCookie(cname) {
      var name = cname + "=";
      var decodedCookie = decodeURIComponent(document.cookie);
      var ca = decodedCookie.split(';');
      for(var i = 0; i <ca.length; i++) {
          var c = ca[i];
          while (c.charAt(0) == ' ') {
              c = c.substring(1);
          }
          if (c.indexOf(name) == 0) {
              return c.substring(name.length, c.length);
          }
      }
      return "";
  }
  
  function addDays(x) {
    var someDate = new Date();
    var numberOfDaysToAdd = x;
    someDate.setDate(someDate.getDate() + numberOfDaysToAdd); 
  }
  
  // Cookie Accept Function
  //  Dependencies - Bootstrap 4
  $(".cookie-accept").on("click", function(){
    setCookie('cookie_accept', 1, addDays(30));
  });
  
  $(".privacy-link").on("click", function(){
    $('#cookieModal1').modal('toggle');
    $('#cookieModal2').modal({show:true,focus:true,keyboard:false,backdrop:'static'});
  });
  
  if(getCookie('cookie_accept') != 1) {
    $('#cookieModal1').modal({focus:true,keyboard:false,backdrop:'static'});
  }

});
