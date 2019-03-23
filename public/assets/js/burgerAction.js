$(function () {

    $(".addBurger").on("submit", function (event) {
        event.preventDefault();

        var newBurger = {
            burger_name: $("newburger")
                .val()
                .trim(),
            devoured:0
        };

        $.ajax("/burgers", {
            type: "POST",
            data: newBurger
        }).then(function () {
            console.log("Added a new burger");
            location.reload();
        });
    });

    $(document).on("click", '.eatburger', function (event) { 
        alert("eaten");
        event.preventDefault();
        
        var id = $(this).data("id");
        var devouredState = {
            devoured: 1
        };

        $.ajax("/burgers/" + id, {
            type: "PUT",
            data: devouredState
        }).then(function () {
            console.log("Burger Devoured");
            location.reload();
        });
    });
});


