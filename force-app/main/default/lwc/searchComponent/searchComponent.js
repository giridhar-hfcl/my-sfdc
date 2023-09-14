import { LightningElement } from 'lwc';

export default class SearchComponent extends LightningElement {
    accounts = []
    handleResult(e) {
        console.log("parent", e.detail)
        this.accounts = e.detail
    }
}