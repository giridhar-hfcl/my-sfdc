import { LightningElement, wire, track } from 'lwc';
import getAllMerchs from '@salesforce/apex/GetMerch.getAllMerchs'

export default class WireComp extends LightningElement {
    @track columns = [{label: "Name", fieldName: "Name"}, {label: "Id", fieldName: "Id"}]
    @track data = []

    @wire(getAllMerchs)
    test({data, error}) {
        if(data) {
            this.data = data
        } else if (error) {
            console.log(error)
        }
    }
}