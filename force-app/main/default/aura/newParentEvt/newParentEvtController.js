({
    handleNewEvt: function (component, event, helper) {
        alert("from parent");
        const val = event.getParam("msg");
        alert(val);
    }
});
