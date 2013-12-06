/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function fetch_publications() {
    var url="https://spreadsheets.google.com/feeds/list/0AheQvF3BluZUdHp1dmI3bjdDTDdUXzJGcGxjQmxmdUE/od7/public/values?alt=json-in-script&callback=load_publications";
    var s = document.createElement("script");
    s.type = "text/javascript";
    s.src = url;
    // Use any selector
    $("head").append(s);
}

function load_publications(data){
    console.log(data);
    $("#temp-elm1").remove();
    $("#temp-elm2").remove();
    var container_conf = $("#publications tbody");
    var entries = data.feed.entry;

    for(var n in entries){
        
        if(entries[n].gsx$type.$t === 'conference'){
            var content = entries[n].gsx$authors.$t
                + ': <b>'
                + entries[n].gsx$title.$t
                + '</b>,</br>'
                + entries[n].gsx$booktitle.$t
                + ', '
                + entries[n].gsx$location.$t
                + ', ';

                if(entries[n].gsx$publisher.$t !== ''){
                    content += entries[n].gsx$publisher.$t + ', ';
                }
                content += entries[n].gsx$month.$t 
                + ' ' 
                + entries[n].gsx$year.$t;
            var bibtex_link = '';
            if(entries[n].gsx$bibtex.$t !== ''){
                bibtex_link = entries[n].gsx$bibtex.$t;
            }

            var pdf_link = '';
            if(entries[n].gsx$pdf.$t !== ''){
                pdf_link = entries[n].gsx$pdf.$t;
            }

            if(pdf_link !== '' && bibtex_link !== ''){
                var temp_data = $('<tr> <td>' 
                    + content
                    + '</td><td><a href="'
                    + pdf_link
                    + '"><img class="pdf-icon" src="/thd/public/img/pdf-icon.png"/></a><a href="'
                    + bibtex_link
                    + '"><img class="bibtex-icon" src="/thd/public/img/bibtex-icon.png"/></a></td></tr>').hide();
                container_conf.append(temp_data);

            }else if(pdf_link !== '' && bibtex_link == ''){
                var temp_data = $('<tr> <td>' 
                    + content
                    + '</td><td><a href="'
                    + pdf_link
                    + '"><img class="pdf-icon" src="/thd/public/img/pdf-icon.png"/></a></td></tr>').hide();
                container_conf.append(temp_data);
            }else if(pdf_link == '' && bibtex_link !== ''){
                var temp_data = $('<tr> <td>' 
                    + content
                    + '</td><td></a><a href="'+
                    + bibtex_link
                    + '"><img class="bibtex-icon" src="/thd/public/img/bibtex-icon.png"/></a></td></tr>').hide();
                container_conf.append(temp_data);
            } else {
                var temp_data = $('<tr> <td>' 
                    + content
                    + '</td><td></td></tr>').hide();
                container_conf.append(temp_data);
            }
            $("#publications tbody tr").each(function(){
                $(this).show("slow");
            });
        }            
    }
}