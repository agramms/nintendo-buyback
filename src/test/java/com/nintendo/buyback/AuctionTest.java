package com.nintendo.buyback;

import com.nintendo.buyback.model.Auction;
import com.nintendo.buyback.service.AuctionService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.transaction.Transactional;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * Created by avieira on 14/03/2017.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class AuctionTest {
    @Autowired
    private AuctionService auctionService;

    @Autowired
    private TestEntityManager entityManager;


    @Test
    public void createAuction()
    {
        Auction auction = new Auction();
        auction.setName("!!Auction#1 Test1!!");
        auctionService.createAuction(auction);
        List<Auction> auctions = auctionService.findAuctionsByNameAdmin("!!Auction#1 Test1!!");

        for (Auction persistedAuction : auctions) {
            assertThat(auction.getName()).isEqualTo(persistedAuction.getName());
            assertThat(auction.getQtdMaxProducts()).isEqualTo(100);
            assertThat(auction.getAuctionItens().size()).isEqualTo(100);
        }


    }

}
