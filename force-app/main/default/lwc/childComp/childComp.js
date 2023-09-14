import { LightningElement, api, track } from "lwc";

export default class ChildComp extends LightningElement {
    @api headerLabel = "from child";
    greeting = "Hello World";
    @track fullName = { firstName: "", lastName: "" };

    changeHandler(event) {
        this.greeting = event.target.value;
    }

    changeNameHandler(e) {
        if (e.target.name === "firstName") {
            this.fullName.firstName = e.target.value;
        } else {
            this.fullName.lastName = e.target.value;
        }
    }

    get uppercasedFullName() {
        return `${this.fullName.firstName} ${this.fullName.lastName}`
            .trim()
            .toUpperCase();
    }
}
