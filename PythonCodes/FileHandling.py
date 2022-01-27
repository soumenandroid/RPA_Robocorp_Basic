# +
# Comments - This Python class contains methoeds to handle different files
import csv


class   FileHandling(object):
    
    def fetch_data_from_csv(self,   fileName):
        data = []
        with open(fileName, 'rb') as csvfile:
            reader = csv.reader(csvfile)
            for row in reader:
                data.append(row)
        return data
