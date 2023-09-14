import { LightningElement } from "lwc";
import getAccData from "@salesforce/apex/SearchAccount.getAllAccounts";

export default class SearchAccounts extends LightningElement {
    account = {
        name: "",
        phone: "",
        billingCity: "",
        billingStreet: "",
        billingZip: ""
    };

    changeHandler(e) {
        this.account[e.target.name] = e.target.value;
    }

    searchAccount(e) {
        e.preventDefault();
        console.log(this.account.name);
        getAccData(this.account)
            .then((detail) => {
                this.dispatchEvent(new CustomEvent('result', { detail }))
            })
            .catch((error) => console.log(error));
    }
}
