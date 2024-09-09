
DataTrade:([] Open:`float$(); High:`float$(); Low:`float$(); adjClose:`float$(); Volume:`int$())


.CSVconverter{[x]
              file_path: raze string `x, ".csv";
              file: `$file_path;
              rawData: read0 file;
              header : first rawData;
              data: ("FFFFI"; enlist ",") 0: rawData;
              data: update Volume:`int$Volume from data;
              `DataTrade insert data;

  

}






