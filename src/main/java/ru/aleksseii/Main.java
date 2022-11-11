package ru.aleksseii;

import org.jetbrains.annotations.NotNull;

public final class Main {

    public static void main(@NotNull String @NotNull [] args) {

        DatabaseManager databaseManager = new DatabaseManager(args[0], args[1], args[2], args[3]);
        databaseManager.applyMigrations("db");
    }
}