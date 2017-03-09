  function showSchimba(){

    if(document.getElementById('drop-down').style.display.match("none"))

    {

     document.getElementById('drop-down').style.display = "block";

     document.getElementById('drop-down').style.position="absolute";
    document.getElementById('drop-down').style.zIndex="999";
    

      if( document.getElementById('nume').style.display.match("none") && 

        document.getElementById('user').style.display.match("none") && 

        document.getElementById('pass').style.display.match("none")

     )

    {

      document.getElementById("istoric").style.margin = "52px 0px 0px 0px";

    }

  }

  else{

    document.getElementById('drop-down').style.display = "none";

    

  }

  }

    

  function showNume(){

    if(document.getElementById('nume').style.display.match("none"))

    {

     document.getElementById('nume').style.display = "block";

      document.getElementById('aNume').style.display = "none";



      if(document.getElementById('submit-drop').style.display.match("none"))

        document.getElementById('submit-drop').style.display = "block";

    document.getElementById("istoric").style.margin = "7px 0px 0px 0px";

    }

  else{

    document.getElementById('nume').style.display = "none";

    

  }

  }



  function showUser(){

    if(document.getElementById('user').style.display.match("none"))

    {

     document.getElementById('user').style.display = "block";

     document.getElementById('aUser').style.display = "none";

       if(document.getElementById('submit-drop').style.display.match("none"))

        document.getElementById('submit-drop').style.display = "block";

     document.getElementById("istoric").style.margin = "8px 0px 0px 0px";

    }

  else{

    document.getElementById('user').style.display = "none";

    }

  }



  function showPass(){

    if(document.getElementById('pass').style.display.match("none"))

    {

     document.getElementById('pass').style.display = "block";

     document.getElementById('aPass').style.display = "none";

       if(document.getElementById('submit-drop').style.display.match("none"))

        document.getElementById('submit-drop').style.display = "block";

     document.getElementById("istoric").style.margin = "8px 0px 0px 0px";

    }

  else{

    document.getElementById('pass').style.display = "none";

    }

  }



  function showMetode(){

    if(document.getElementById('prieten').style.display.match("none"))

    {

     document.getElementById('prieten').style.display = "block";
    document.getElementById('variante').style.display = "none";
     document.getElementById('raspuns-input').style.display = "none";
     document.getElementById('submit-var').style.display = "none";
    }

  else

  {

    document.getElementById('prieten').style.display = "none";

      document.getElementById('raspuns-input').style.display = "block";
     document.getElementById('submit-var').style.display = "block";
  }

  }



  function showVar(){

    if(document.getElementById('variante').style.display.match("none"))

    {

     document.getElementById('variante').style.display = "block";

     document.getElementById('raspuns-input').style.display = "none";

     document.getElementById('variante').style.position = "absolute";

     document.getElementById('submit-var').style.margin = "20px 0px 0px 0px";
   document.getElementById('prieten').style.display = "none";
    

    }

  else

  {

    document.getElementById('variante').style.display = "none";

    document.getElementById('raspuns-input').style.display = "block";

    document.getElementById('submit-var').style.margin = "0px 0 0 0";

  }
  }

