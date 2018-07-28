/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author sonnt5
 */
public class HtmlHelper {
    public static String generateHyperlink(String href, String innerText) {
        return "<a id=\"paging\" href=\"" + href + "\" >" + innerText + "</a>";
    }

    public static String pagger(int pageIndex, int gap, int totalPage, String title) {
        String result = "";

        for (int i = Math.max(pageIndex - gap, 1); i < pageIndex; i++) {

            result += generateHyperlink("list?page=" + i + "&title=" + title, "    " + i);

        }

        result += "<span class='pageindex'>" + "    " + pageIndex + "    " + "</span>";

        for (int i = pageIndex + 1; i <= Math.min(pageIndex + gap, totalPage); i++) {
            result += generateHyperlink("list?page=" + i + "&title=" + title, "    " + i);
        }

        return result;
    }
}
