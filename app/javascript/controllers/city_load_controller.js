import {Controller} from "@hotwired/stimulus"

import axios from "../custom-axios";

// Connects to data-controller="city-load"
export default class extends Controller {
    static targets = ["state", "city"];

    connect() {
        // const element = document.querySelector('.js-choice');
        // const choices = new Choices(element)
        $(this.cityTarget).on('select2:city', function () {
            let event = new Event('change', { bubbles: true }) // fire a native event
            this.dispatchEvent(event);
        });

        const selector = $('.select2-input').select2({
            theme: "bootstrap-5",
            width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
            placeholder: $(this).data('placeholder'),
        }).trigger('change');
    }

    cities() {

        let state_id = this.stateTarget.value;

        if (!_.isEmpty(state_id.trim())) {
            axios
                .get("/admin/inspections/cities/" + state_id)
                .then((data) => {
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
        if (_.isEmpty(num_rooms)) {
            const option = document.createElement("option");
            option.innerHTML = "Escolha o estado primeiro";
            this.cityTarget.appendChild(option);
        } else {
            data.forEach((row) => {
                const option = document.createElement("option");
                option.value = row.id;
                option.innerHTML = row.name;
                option.selected = parseInt(state_id) === row.id;
                this.cityTarget.appendChild(option);
            });
        }
    }
}
