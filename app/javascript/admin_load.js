// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"

import "./controllers"

// "js": {
//     "core": [
//         "./node_modules/jquery/dist/jquery.js",
//         "./node_modules/waypoints/lib/noframework.waypoints.min.js",
//         "./node_modules/datatables.net/js/jquery.dataTables.min.js",
//         "./node_modules/@popperjs/core/dist/umd/popper.min.js",
//         "./node_modules/bootstrap/dist/js/bootstrap.min.js",
//         "./node_modules/datatables.net-bs5/js/dataTables.bootstrap5.min.js",
//         "./{directory}/assets/vendor/lodash/lodash.min.js",
//         "./node_modules/swiper/swiper-bundle.min.js"
//     ],
//         "external": [
//         "./node_modules/nouislider/distribute/nouislider.min.js",
//         "./node_modules/vanillajs-datepicker/dist/js/datepicker-full.js",
//         "./node_modules/smooth-scrollbar/dist/smooth-scrollbar.js",
//         "./{directory}/assets/js/plugins/circle-progress.js",
//         "./node_modules/apexcharts/dist/apexcharts.min.js",
//         "./node_modules/counterup2/dist/index.js",
//         "./src/assets/vendor/Leaflet/leaflet.js"
//     ]
// }
// import "./admin/core/libs.min"
import "./admin/core/external.min"
// import "./admin/plugins/circle-progress"
import "./admin/plugins/setting"
import "./admin/plugins/countdown"
// AOS Animation Plugin
import "./admin/plugins/aos.js"
import "./admin/custom"
import "./admin/hope-ui"

