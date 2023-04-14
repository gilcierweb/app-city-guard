import {Controller} from "@hotwired/stimulus"

import axios from "../custom-axios";

// Connects to data-controller="city-load"
export default class extends Controller {
    static targets = ["state", "city"];

    connect() {
    }

    cities() {

        let state_id = this.stateTarget.value;

        if (!_.isEmpty(state_id.trim())) {
            axios
                .get("/admin/inspections/cities/" + state_id)
                .then((data) => {
                    console.log("Success:", data);
                    this.updateDropdown(data.data.data);
                })
                .catch((error) => {
                    console.error("Error:", error);
                });
        }
    }

    updateDropdown(data) {
        let state_id = this.stateTarget.value;
        this.cityTarget.innerHTML = "";
        const num_rooms = data;
        if (num_rooms == 0 || state_id == 0 || state_id == '') {
            const option = document.createElement("option");
            option.innerHTML = "Escolha o estado primeiro";
            this.cityTarget.appendChild(option);
        } else {
            data.forEach((city) => {
                const option = document.createElement("option");
                option.value = city.id;
                option.innerHTML = city.name;
                this.cityTarget.appendChild(option);
            });
        }
    }
}
