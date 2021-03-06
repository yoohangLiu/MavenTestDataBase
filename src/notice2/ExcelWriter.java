package notice2;

import jxl.*;
import java.util.*;
import java.io.*;
import jxl.write.*;

public class ExcelWriter
{
    public void GenerateExcel(final String path, final String sheetName, final String[] thead, final List aadata) {
        try {
            final OutputStream os = new FileOutputStream(path);
            final WritableWorkbook workbook = Workbook.createWorkbook(os);
            final WritableSheet sheet = workbook.createSheet(sheetName, 0);
            for (int i = 0; i < thead.length; ++i) {
                final Label label = new Label(i, 0, thead[i]);
                sheet.addCell((WritableCell)label);
            }
            for (int i = 0; i < aadata.size(); ++i) {
                final ArrayList list = (ArrayList) aadata.get(i);
                for (int j = 1; j < list.size(); ++j) {
                    final Label label = new Label(j - 1, i + 1, (String)list.get(j));
                    sheet.addCell((WritableCell)label);
                }
            }
            workbook.write();
            System.out.println("ryw");
            workbook.close();
            os.close();
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}