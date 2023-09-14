({
    helperMethod: function (cmp, evt) {
        const eName = cmp.get("v.name");
        const eAddress = cmp.get("v.address");
        const eDept = cmp.get("v.dept");
        const eSalary = cmp.get("v.salary");

        const action = cmp.get("c.insertDetails");
        action.setParams({ eName, eAddress, eDept, eSalary });
        action.setCallback(this, function (a) {
            const state = a.getState();
            if (state == "SUCCESS") {
                alert(`Yo ${eName}! welcome to our org`);
            }
        });

        $A.enqueueAction(action);
    }
});
