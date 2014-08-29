/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
var month = new Array();
month[1] = "January";
month[2] = "February";
month[3] = "March";
month[4] = "April";
month[5] = "May";
month[6] = "June";
month[7] = "July";
month[8] = "August";
month[9] = "September";
month[10] = "October";
month[11] = "November";
month[12] = "December";

var dayH = new Array();
dayH[1] = "1st";
dayH[2] = "2nd";
dayH[3] = "3rd";
dayH[4] = "4th";
dayH[5] = "5th";
dayH[6] = "6th";
dayH[7] = "7th";
dayH[8] = "8th";
dayH[9] = "9th";
dayH[10] = "10th";
dayH[11] = "11th";
dayH[12] = "12th";
dayH[13] = "13rd";
dayH[14] = "14th";
dayH[15] = "15th";
dayH[16] = "16th";
dayH[17] = "17th";
dayH[18] = "18th";
dayH[19] = "19th";
dayH[20] = "20th";
dayH[21] = "21st";
dayH[22] = "22nd";
dayH[23] = "23rd";
dayH[24] = "24th";
dayH[25] = "25th";
dayH[26] = "26th";
dayH[27] = "27th";
dayH[28] = "28th";
dayH[29] = "29th";
dayH[30] = "30th";
dayH[31] = "31st";

function fetch_releases() {
    var url="https://spreadsheets.google.com/feeds/list/0AheQvF3BluZUdGh5THdMNWd2Q2NvczdXLThiUFptQnc/od6/public/values?alt=json-in-script&callback=load_releases";
    var s = document.createElement("script");
    s.type = "text/javascript";
    s.src = url;
    // Use any selector
    $("head").append(s);
}

function load_releases(data){
    console.log(data);
//    $("#temp-elm1").remove();
//    $("#temp-elm2").remove();
    $("#temp-elm-data-loading").remove();
    var container = $(".sub-main2");
    var entries = data.feed.entry;
//
    for(var n in entries){
            var version = entries[n].gsx$version.$t;
            var note = entries[n].gsx$note.$t;
            var date = entries[n].gsx$date.$t;
            
            var parsedDate = date.split("/");
            var dayS = parsedDate[0];
            var monthS = parsedDate[1];
            var yearS = parsedDate[2];
//            console.log(version);
//            console.log(note);
//            console.log(date);
            container.append("<h2>"+version+" ("+month[monthS] + " " + dayH[dayS] + ", " + yearS+")"+"</h2>"); 
//            container.append("<p>" + month[monthS] + " " + dayH[dayS] + ", " + yearS +"</p>");
            
            var news = note.split(";");
            container.append("<ul>");
            for(n in news) {
                container.append("<li>" + news[n] +"</li>");
            }
            container.append("</ul>");
            
    }

    container.append("</br>");
    container.append("</br>");
    container.append("</br>");
}

