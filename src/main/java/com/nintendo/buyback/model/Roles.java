package com.nintendo.buyback.model;

/**
 * Created by avieira on 07/03/2017.
 */
public enum Roles {
    ADMIN("ADMIN"), USER("USER");

    private String value;
    Roles(String name)
    {
        this.value = name;
    }

    @Override
    public String toString()
    {
        return this.value;
    }
}
