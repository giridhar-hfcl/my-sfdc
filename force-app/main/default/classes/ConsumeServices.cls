public class ConsumeServices {
    public void Details(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('POST');
        req.setHeader('Content-Type','application/json;charset=UTF-8');
 
        req.setBody('{"name":"mighty moose"}');    
        HTTPResponse res = http.send(req);
        if(res.getStatusCode() != 201){
            System.debug('The Status code returened was not expected' + res.getStatusCode() + ' ' + res.getStatus());
        }
        else{
            System.debug(res.getBody());
        }
    }
}