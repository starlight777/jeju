public class test {
	public static void main(String[] args) {
		// int ttC = 25;
		// int cl = 10;
		// //int totalPage = ttC/cl;
		//
		// if(ttC % cl > 0 ) {
		// totalPage++;
		//
		// }
		// System.out.println(totalPage);
		//
		//
		//
		// if(ttC > cl * totalPage) {
		// totalPage++;
		// }
		// System.out.println(totalPage);
		//
		// int page = 2;
		//
		//
		// int totalCount = 25;
		//
		// int countList = 10;
		//
		//
		// int totalPage = totalCount / countList;
		//
		//
		// if (totalCount % countList > 0) {
		//
		// totalPage++;
		//
		// }
		//
		//
		//
		// if (totalPage < page) {
		//
		// page = totalPage;
		//
		// }
		//
		// System.out.println(page);

		// int page = 5;
		// int countPage = 10;
		//
		// int startPage = ((page - 1) / 10) * 10 + 1;
		// int endPage = startPage + countPage - 1;
		//
		// System.out.println(startPage);
		// System.out.println(endPage);
		//
		//
		// int su = 4/10;
		// System.out.println(su);
		//
		// for (int iCount = startPage; iCount <= endPage; iCount++) {
		//
		// System.out.print(" " + iCount + " ");
		//
		// }
		//
		//
		int page = 22; // 현재페이지

		int countList = 10; // 출력할게시물 숫자

		int countPage = 10; // 10개의 번호

		int totalCount = 255; // 총게시물개수

		int totalPage = totalCount / countList; // 몇개의번호까지 나오는지

		System.out.println(totalPage);

		if (totalCount % countList > 0) {

			totalPage++;

		}
		System.out.println(totalPage);

		if (totalPage < page) {

			page = totalPage;

		}

		int startPage = ((page - 1) / 10) * 10 + 1;

		int endPage = startPage + countPage - 1;

		// 여기서 마지막 페이지를 보정해줍니다.

		if (endPage > totalPage) {

			endPage = totalPage;

		}

		// [paging]

		// 이 부분은 아래에서 추가로 설명합니다.

		for (int iCount = startPage; iCount <= endPage; iCount++) {

			System.out.print(" " + iCount + " ");

		}
		
		System.out.println("");
		System.out.println("--------------------------");

		for (int iCount = startPage; iCount <= endPage; iCount++) {

			if (iCount == page) {

				System.out.print(" <b>" + iCount + "</b>");

			} else {

				System.out.print(" " + iCount + " ");

			}

		}
	}
}
