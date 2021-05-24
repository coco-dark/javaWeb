package JDBCutils;

/**
 * @author lizhibing
 * @create 2021-05-17 17:23
 * @description
 **/
public class PageUtils {
    private int page;
    private int ROW=5;
    private int prevPage;
    private int nextPage;
    private int jumpPage;
    private int count;
    private int index;
    public PageUtils(){}

    public PageUtils(String page,int count) {
        this.count=count;
        setPage(page);
        setIndex();
        setPrevPage();
        setNextPage();

    }
    public PageUtils(String page,int count,int row){
        this.ROW=row;
        this.count=count;
        setPage(page);
        setIndex();
        setPrevPage();
        setNextPage();
    }
    public int getCount(){
        return this.count;
    }
    public int getPage() {
        return page;
    }

    public void setPage(String page) {
        if("".equals(page)||page==null){
            this.page=1;
        }else {

            int pg=Integer.parseInt(page);
            if(pg>count()){
                pg=count();

            }
            this.page=pg;

        }
    }
    public void setIndex(){
        this.index=(this.page-1)*ROW;
    }
    public int getIndex(){
        return index;
    }
    public int getROW() {
        return ROW;
    }

    public int getPrevPage() {

        return prevPage;
    }

    public void setPrevPage() {
        if(this.page==1){
            this.prevPage=page;
        }else {
            prevPage=page-1;
        }
    }

    public int getNextPage() {
        return nextPage;
    }
    public int count(){
        int count=this.count%this.ROW;
        if(count==0){
            count=this.count/this.ROW;
        }else {
            count=this.count/this.ROW+1;
        }
        return count;
    }
    public void setNextPage() {
        if(page==count()){
            this.nextPage=page;
        }else {
            this.nextPage=page+1;

        }
    }

    public int getJumpPage() {
        return jumpPage;
    }

    public void setJumpPage(int jumpPage) {
        this.jumpPage = jumpPage;
    }
}
