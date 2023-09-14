({
    publishMsg : function(component, event, helper) {
        var msg = component.get('v.msgIp')
        var src = 'From Aura'

        var mc = component.find("SAMPLEMC")
        mc.publish({ messageToSend: msg, sourceSystem: src })
    }
})
