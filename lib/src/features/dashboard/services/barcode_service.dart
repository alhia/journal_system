import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class BarcodeService {
  final String barcodeString;

  const BarcodeService(this.barcodeString);

  Future printBarcode() async {
    final doc = pw.Document();
    doc.addPage(pw.Page(
        pageFormat: const PdfPageFormat(
            PdfPageFormat.mm * 100, PdfPageFormat.mm * 60,
            marginAll: 8),
        build: (pw.Context context) {
          return pw.LayoutBuilder(builder: (context, constraints) {
            return pw.BarcodeWidget(
              barcode: pw.Barcode.fromType(pw.BarcodeType.Code128),
              data: barcodeString,
            ); //
          });
        }));
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}
