.class public Lch/qos/logback/core/net/ssl/SSLNestedComponentRegistryRules;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V
    .locals 3

    .line 0
    const-class v0, Lch/qos/logback/core/net/ssl/SSLComponent;

    const-string v1, "ssl"

    const-class v2, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    invoke-virtual {p0, v0, v1, v2}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "parameters"

    const-class v1, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    invoke-virtual {p0, v2, v0, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "keyStore"

    const-class v1, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    invoke-virtual {p0, v2, v0, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "trustStore"

    invoke-virtual {p0, v2, v0, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "keyManagerFactory"

    const-class v1, Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;

    invoke-virtual {p0, v2, v0, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "trustManagerFactory"

    const-class v1, Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;

    invoke-virtual {p0, v2, v0, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "secureRandom"

    const-class v1, Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;

    invoke-virtual {p0, v2, v0, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
