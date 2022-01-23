from PyPDF2 import PdfFileReader



pdf_path = 'C:/Users/Alsok/Downloads/Visa_Application_Form_South_India.pdf'
pdf = PdfFileReader(pdf_path)
first_page = pdf.getPage(0)

print(first_page.extractText())