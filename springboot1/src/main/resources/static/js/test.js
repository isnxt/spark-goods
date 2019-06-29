function backRawData() {
    var id=document.getElementById("rawTable");
    //alert("test1");
    var text=rawTable.fn.renderMain();
    //alert(text);
    id.innerHTML=text;
}

function backFollowData() {
    var id=document.getElementById("followTable");
    //alert("test1");
    var text=followTable.fn.showFollowDataTable();
    //alert(text);
    id.innerHTML=text;
}

function backUserRData() {
    var id=document.getElementById("userRTable");
    //alert("test1");
    var text=userRTable.fn.showUserRDataTable();
    //alert(text);
    id.innerHTML=text;
    
}

function backItemRData() {
    var id=document.getElementById("itemRTable");
    //alert("test1");
    var text=itemRTable.fn.showItemRDataTable();
    //alert(text);
    id.innerHTML=text;
}

function backEvalData() {
    var id=document.getElementById("evalTable");
    //alert("test1");
    var text=evalTable.fn.renderMain();
    //alert(text);
    id.innerHTML=text;
}

function backFpgData() {
    var id=document.getElementById("fpgTable");
    //alert("test1");
    var text=fpgTable.fn.renderMain();
    //alert(text);
    id.innerHTML=text;
}



