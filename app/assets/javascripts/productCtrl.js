(function() {
  "use strict";
 
  angular.module("app").controller("productCtrl", function($scope) {
    

    $scope.reviews = [
      {
        text: "I love Sweet Street!",
        rating: 5,
        reviewer: "Robert Elroy"
      },
      {
        text: "You guys are Great!!",
        rating: 4,
        reviewer: "Sam Smith"

      },
      {
        text: "Best Chocolate Dipped Strawberries Ever!",
        rating: 5,
        reviewer: "Michael Jordan"

      }
    ];

    $scope.addReview = function(text, rating, reviewer) {

      var newReview = {
       text: text,
       rating: rating,
       reviewer: reviewer
      }
      
      
      $scope.reviews.push(newReview);
      $scope.newReviewText = "";
      $scope.newReviewRating = "";
      $scope.newReviewName = "";
         
    };

    $scope.positive = function(review) {
      return review.indexOf("stupid") == -1;
    };

    $scope.hours = function() {
      $scope.hours = "HOURS: Monday - Thursday 10am - 8pm and Sunday Noon - 5pm"
   
  };

    window.scope = $scope;
  }); 
}());