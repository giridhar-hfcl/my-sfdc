({
    fireEvt: function (component, event, helper) {
        alert("Child");
        const e = component.getEvent("myEvt");
        e.setParams({ msg: "you pressed!" });
        e.fire();
    }
});
