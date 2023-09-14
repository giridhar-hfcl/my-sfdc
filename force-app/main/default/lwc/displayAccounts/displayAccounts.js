import { LightningElement, api } from "lwc";

export default class DisplayAccounts extends LightningElement {
    @api accounts
    columns = [
        { label: 'Account name', fieldName: 'Name' },
        { label: 'Phone', fieldName: 'Phone', type: "Phone" }
    ];
    
}
