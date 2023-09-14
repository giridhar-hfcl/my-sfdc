({
    // Your renderer method overrides go here
    render: function (hpr, evt) {
        const r = this.superRender();
        alert("render");
        return r;
    },
    afterRender: function (hpr, evt) {
        this.superAfterRender();
        alert("after render");
    },
    rerender: function (hpr, evt) {
        this.superRerender();
        alert("re render");
    },
    unrender: function (hpr, evt) {
        this.superUnrender();
        alert("un render");
    }
});
