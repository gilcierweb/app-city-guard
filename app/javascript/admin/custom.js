const sidebarToggle = document.querySelector(".sidebar-toggle");
const currentSidebarMenu = localStorage.getItem("sidebar-menu");
let sidebarMenu = document.querySelector('.sidebar-default');

if (currentSidebarMenu == "true") {
    sidebarMenu.classList.add("sidebar-mini");
}

function sidebarMenuToggle() {
    let collapsed = "true";
    if (sidebarMenu.classList.contains("sidebar-mini")) {
        collapsed = "false";
    }
    localStorage.setItem("sidebar-menu", collapsed);
}

sidebarToggle.addEventListener("click", sidebarMenuToggle);

window.initSelect2 = function () {
    // select2 bootstrap
    const selector = $('.select2-input').select2({
        theme: "bootstrap-5",
        width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
        placeholder: $(this).data('placeholder'),
    }).trigger('change.select2');

};

$(document).ready(function () {
    initSelect2();
    // const element = document.querySelector('.js-choice');
    // const choices = new Choices(element)
});

$(document).on('turbo:load', function () {
    initSelect2();
});