# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"12992","system":"gprdproduct"},{"code":"18217","system":"gprdproduct"},{"code":"20127","system":"gprdproduct"},{"code":"20650","system":"gprdproduct"},{"code":"21770","system":"gprdproduct"},{"code":"22232","system":"gprdproduct"},{"code":"22305","system":"gprdproduct"},{"code":"23593","system":"gprdproduct"},{"code":"2986","system":"gprdproduct"},{"code":"3","system":"gprdproduct"},{"code":"30920","system":"gprdproduct"},{"code":"31211","system":"gprdproduct"},{"code":"31953","system":"gprdproduct"},{"code":"31954","system":"gprdproduct"},{"code":"32036","system":"gprdproduct"},{"code":"32210","system":"gprdproduct"},{"code":"33320","system":"gprdproduct"},{"code":"33656","system":"gprdproduct"},{"code":"33662","system":"gprdproduct"},{"code":"33668","system":"gprdproduct"},{"code":"33676","system":"gprdproduct"},{"code":"34309","system":"gprdproduct"},{"code":"34434","system":"gprdproduct"},{"code":"34942","system":"gprdproduct"},{"code":"377","system":"gprdproduct"},{"code":"393","system":"gprdproduct"},{"code":"40144","system":"gprdproduct"},{"code":"41594","system":"gprdproduct"},{"code":"42218","system":"gprdproduct"},{"code":"44639","system":"gprdproduct"},{"code":"45840","system":"gprdproduct"},{"code":"46925","system":"gprdproduct"},{"code":"47937","system":"gprdproduct"},{"code":"49060","system":"gprdproduct"},{"code":"49685","system":"gprdproduct"},{"code":"50555","system":"gprdproduct"},{"code":"50926","system":"gprdproduct"},{"code":"52618","system":"gprdproduct"},{"code":"53816","system":"gprdproduct"},{"code":"54284","system":"gprdproduct"},{"code":"54565","system":"gprdproduct"},{"code":"54997","system":"gprdproduct"},{"code":"55230","system":"gprdproduct"},{"code":"56007","system":"gprdproduct"},{"code":"56995","system":"gprdproduct"},{"code":"56996","system":"gprdproduct"},{"code":"57057","system":"gprdproduct"},{"code":"59791","system":"gprdproduct"},{"code":"685","system":"gprdproduct"},{"code":"7518","system":"gprdproduct"},{"code":"9044","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('aspirin-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["orodispersible-aspirin-p3_p11---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["orodispersible-aspirin-p3_p11---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["orodispersible-aspirin-p3_p11---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
