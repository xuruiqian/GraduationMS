package mybatistest;

import com.mybatisbasicdemo.domain.QuickNavigationWithBLOBs;
import com.mybatisbasicdemo.mapper.QuickNavigationMapper;
import org.junit.Test;

import java.util.List;

public class TestMyBatisQuery extends TestMyBatisBase {
    @Test
    public void Query() {
        QuickNavigationMapper quickNavigationMapper =
                sqlSession.getMapper(QuickNavigationMapper.class);
        QuickNavigationWithBLOBs result = quickNavigationMapper.selectByPrimaryKey("2ce64a8c-95e4-40e2-903f-579b73efe1f9");
        System.out.println(result.getText().toString());

        List<QuickNavigationWithBLOBs> quickNavigations = quickNavigationMapper.selectAll();
        for (QuickNavigationWithBLOBs item :
                quickNavigations) {
            System.out.println(item.getText().toString());
        }

        sqlSession.close();
    }
}
