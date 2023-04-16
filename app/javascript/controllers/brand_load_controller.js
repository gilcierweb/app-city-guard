import {Controller} from "@hotwired/stimulus"

import axios from "../custom-axios";

// Connects to data-controller="brand-load"
export default class extends Controller {
    static targets = ["kind", "brand","select"];

    connect() {
        // const element = document.querySelector('.js-choice');
        // const choices = new Choices(element)
        // "select"
        $(this.brandTarget).on('select2:brand', function () {
            let event = new Event('change', { bubbles: true }) // fire a native event
            this.dispatchEvent(event);
        });
    }

    brands(event) {

        // let kind = this.kindTarget.value;

        let kind = event.target.value

        if (!_.isEmpty(kind.trim())) {
            axios
                .get("/admin/inspections/brands/" + kind)
                .then((data) => {
                    this.updateDropdown(data.data.data);
                })
                .catch((error) => {
                    console.error("Error:", error);
                });
        }
    }

    updateDropdown(data) {
        let brand_id = this.brandTarget.value;
        this.brandTarget.innerHTML = "";
        const num_rooms = data;
        if (_.isEmpty(num_rooms)) {
            const option = document.createElement("option");
            option.innerHTML = "Escolha o tipo de veículo";
            this.brandTarget.appendChild(option);
        } else {
            data.forEach((row) => {
                const option = document.createElement("option");
                option.value = row.id;
                option.innerHTML = row.name;
                option.selected = parseInt(brand_id) === row.id;
                this.brandTarget.appendChild(option);
            });
        }
    }
}
