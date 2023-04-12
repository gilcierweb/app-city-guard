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