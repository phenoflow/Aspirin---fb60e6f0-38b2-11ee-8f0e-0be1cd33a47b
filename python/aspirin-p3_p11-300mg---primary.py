# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"23488","system":"gprdproduct"},{"code":"24960","system":"gprdproduct"},{"code":"254","system":"gprdproduct"},{"code":"31210","system":"gprdproduct"},{"code":"34386","system":"gprdproduct"},{"code":"41569","system":"gprdproduct"},{"code":"48000","system":"gprdproduct"},{"code":"48165","system":"gprdproduct"},{"code":"49220","system":"gprdproduct"},{"code":"52044","system":"gprdproduct"},{"code":"52280","system":"gprdproduct"},{"code":"52905","system":"gprdproduct"},{"code":"53622","system":"gprdproduct"},{"code":"53711","system":"gprdproduct"},{"code":"54526","system":"gprdproduct"},{"code":"54734","system":"gprdproduct"},{"code":"55579","system":"gprdproduct"},{"code":"56736","system":"gprdproduct"},{"code":"60278","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('aspirin-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["aspirin-p3_p11-300mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["aspirin-p3_p11-300mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["aspirin-p3_p11-300mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
