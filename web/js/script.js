/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function ajaxSyncRequestProcess(reqURL)
{
    document.getElementById("processMessage").innerHTML = "Process under Progress..";

    var x = ProcessMyFile(reqURL);

    if (x == true)
    {
        document.getElementById("btnProcess").value = "Processed";
        document.getElementById("processMessage").innerHTML = "Process Succeed";
        myFunction();
    }
    else
    {
        document.getElementById("btnProcess").value = "Search";
        document.getElementById("processMessage").innerHTML = "Process Failed";
    }
}

function ProcessMyFile(reqURL)
{

    alert("Started");

    var xmlReq = new XMLHttpRequest();

    xmlReq.onreadystatechange = function ()
    {
        alert("inside onreadystatechange function");
        if (xmlReq.readyState == 4 && xmlReq.status == 200)
        {
            document.getElementById("btnProcess").value = "Processing";
            alert("Sucess");
        }
        else
        {
            alert("Failed");
        }
    }
    xmlReq.open("get", reqURL, false);
    xmlReq.send();

    return true;
}


function myFunction() {
    $('.circleGraphic2').circleGraphic({'color': '#E53238'});
}