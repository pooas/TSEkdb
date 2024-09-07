
DataTrade:([] Date:`date$(); Open:`float$(); High:`float$(); Low:`float$(); Close:`float$(); Volume:`int$();)

.CSVconverter:{ [filename; symbol]
                //read rawData
                rawDate: read0: filename;
                header: first rawData;
                data: ("DFFFFI", enlist ",") 0: rawData;
                data: update Sym:symbol from data;
                data: update Volume:`int$Volume from data;
                :`DataTrade insert data;

}




