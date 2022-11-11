package ru.aleksseii;

import lombok.AllArgsConstructor;
import org.flywaydb.core.Flyway;
import org.jetbrains.annotations.NotNull;

@AllArgsConstructor
public final class DatabaseManager {

    private final @NotNull String connection;
    private final @NotNull String dbName;
    private final @NotNull String username;
    private final @NotNull String password;


    public void applyMigrations(String... locations) {

        final Flyway flyway = Flyway.configure()
                .dataSource(connection + dbName, username, password)
                .locations(locations)
                .load();
        flyway.migrate();
    }
}
