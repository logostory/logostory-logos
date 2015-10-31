

var swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    spaceBetween: 30,
    loop: true
});

var noticeApp = angular.module('noticeApp', []);

noticeApp.controller('NoticeCtrl', ['$scope', '$http', function (scope, http){
    http.get('/promotion/v1/promotions').success(function(data) {
      scope.notices = data;
      console.log("data: " + data)
    });
}]);

