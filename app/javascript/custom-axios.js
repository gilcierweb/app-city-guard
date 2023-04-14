import axios from "axios";

const instance = axios.create({
    headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
    },
});

instance.interceptors.request.use(
    function (config) {
        const csrfToken = document.getElementsByName("csrf-token")[0].content;
        config.headers["X-CSRF-Token"] = csrfToken;

        return config;
    },
    function (error) {
        // Do something with request error
        return Promise.reject(error);
    }
);

export default instance;

// use
// import axios from "../src/custom-axios";
//
// ...
//
// axios
//     .post("/posts", { title, editorData })
//     .then((data) => {
//         console.log("Success:", data);
//     })
//     .catch((error) => {
//         console.error("Error:", error);
//     });