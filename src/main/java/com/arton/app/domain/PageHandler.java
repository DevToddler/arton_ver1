package com.arton.app.domain;

public class PageHandler {
    private int totalCount; // 총 게시물 개수
    private int pageSize; // 한 페이지당 보여줄 페이지 개수
    private int naviSize = 10; // 페이지 네비게이션의 크기. 이번엔 한번에 10개 페이지씩 보여주기
    private int totalPage; // 전체 페이지 개수
    private int page; // 현재 페이지
    private int beginPage; // 네비게이션의 첫번째 페이지
    private int endPage; // 네비게이션의 마지막 페이지
    private boolean showPrev; // [이전] 버튼 보여줄기 말지 결정
    private boolean showNext; // [다음] 버튼 보여줄기 말지 결정

    // 페이징 계산하는데 필요한게 '전체 게시물 개수, 현재 페이지, 한 페이지당 보여줄 페이지 개수' 임
    public PageHandler(int totalCount, int page, int pageSize) {
        this.totalCount = totalCount;
        this.page = page;
        this.pageSize = pageSize;

        // 전체 필요한 페이지 개수
        // totalPage = (int) Math.ceil(totalCount / pageSize);
        /* 전체 게시글이 255 개가 있고, 한페이지당 10개의 게시글을 보여준다고 가정했을때
            전체 페이지는 26페이지가 나와야 한다. 위에꺼 처럼 그냥 나누기 한거에 ceil 적용하면 -> (255 / 10) 하면 25 를 ceil 하기 때문에 마지막 26번째 페이지가 안나온다.
            그래서 double 넣어서 변환해서 25.5 를 ceil 처리 해서 26으로 만든다.

        */
        totalPage = (int) Math.ceil(totalCount / (double) pageSize);
        //System.out.println("전체 페이지 수: " + totalPage);

        /* 네비게이션의 첫번째 페이지 구하기
         * 한번에 10개 페이지를 보여준다고 가정했을때 1번 페이저를 선택하던 9번 페이지를 선택하던
         * 지금 화면에 나오는 beginPage 는 1 이어야 한다. (11~20 인 경우에는 11)
         * 주의: 전체 페이지(totalPage) 가 10보다 작은 경우 endPage 는 totalPage 여야 된다.
         *
         * 공식: 현재 내가 선택한 페이지 / 한번에 보여줄 페이지 개수 * 한번에 보여줄 페이지 개수 + 1
         *       16 / 10 * 10 + 1 => 11
         *       8  / 10 * 10 + 1 => 1
         *
         *  현재 페이지 | beginPage
         *       5    |    1  =>   0 + 1 => 1
         *       15   |   11  =>  10 + 1 => 11
         *       11   |   11  =>  10 + 1 => 11
         *       24   |   21  =>  20 + 1 => 21
         * */
        beginPage = (page - 1) / naviSize * naviSize + 1;
        endPage = Math.min((beginPage + naviSize - 1), totalPage); // 둘중에 작은값이 저장됨.
        // 여기에서 -1 하고, 아래 pring() 의 for 문에서 i <= endPage 해줘야 마지막 페이지까지 출력됨.

        showPrev = beginPage != 1; // [이전] 버튼은 beginPage 가 1페이지만 아니면 나오면 된다.
        showNext = endPage != totalPage; // [다음] 버튼은 endPage 가 totalPage만 아니면 된다.
    }


    // TDD 에서 임의로 전체 게시글 수(totalCount) 몇개인지랑 몇페이지에 보고 있는지 가짜로 정보 보내서 저장
    public PageHandler(int totalCount, int page) {
        this(totalCount, page, 10);
    }


    // TDD 에서 호출할때 페이지 네비게이션을 출력하는 부분을 만들어봅시다
    void print() {
        //        if(showPrev)
        System.out.print(showPrev ? "[이전]" : "");

        for (int i = beginPage; i <= endPage; i++) {
            System.out.print(" " + i + " ");
        }

        //        if(showNext)
        System.out.print(showNext ? "[다음]" : "");
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getNaviSize() {
        return naviSize;
    }

    public void setNaviSize(int naviSize) {
        this.naviSize = naviSize;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getBeginPage() {
        return beginPage;
    }

    public void setBeginPage(int beginPage) {
        this.beginPage = beginPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public boolean isShowPrev() {
        return showPrev;
    }

    public void setShowPrev(boolean showPrev) {
        this.showPrev = showPrev;
    }

    public boolean isShowNext() {
        return showNext;
    }

    public void setShowNext(boolean showNext) {
        this.showNext = showNext;
    }

    @Override
    public String toString() {
        return "Ex04_PageHandler{" + "totalCount=" + totalCount + ", pageSize=" + pageSize + ", naviSize=" + naviSize + ", totalPage=" + totalPage + ", page=" + page + ", beginPage=" + beginPage + ", endPage=" + endPage + ", showPrev=" + showPrev + ", showNext=" + showNext + '}';
    }

}
