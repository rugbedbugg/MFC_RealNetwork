.class public final Lcc/mvdan/accesspoint/WifiApControl;
.super Ljava/lang/Object;
.source "WifiApControl.java"


# static fields
.field private static getWifiApConfigurationMethod:Ljava/lang/reflect/Method;

.field private static getWifiApStateMethod:Ljava/lang/reflect/Method;

.field private static instance:Lcc/mvdan/accesspoint/WifiApControl;

.field private static isWifiApEnabledMethod:Ljava/lang/reflect/Method;

.field private static setWifiApEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final deviceName:Ljava/lang/String;

.field private final wm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wifi"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcc/mvdan/accesspoint/WifiApControl;->wm:Landroid/net/wifi/WifiManager;

    .line 107
    invoke-static {p1}, Lcc/mvdan/accesspoint/WifiApControl;->getDeviceName(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcc/mvdan/accesspoint/WifiApControl;->deviceName:Ljava/lang/String;

    return-void
.end method

.method private static getDeviceName(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1

    const-string p0, "WifiApControl"

    const-string v0, "6.0 or later, unaccessible MAC - falling back to the default device name: wlan0"

    .line 150
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "wlan0"

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcc/mvdan/accesspoint/WifiApControl;
    .locals 12

    sget-object v0, Lcc/mvdan/accesspoint/WifiApControl;->instance:Lcc/mvdan/accesspoint/WifiApControl;

    if-nez v0, :cond_7

    .line 115
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiApControl"

    if-nez v0, :cond_0

    const-string p0, "6.0 or later, but haven\'t been granted WRITE_SETTINGS!"

    .line 116
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v0, v5

    .line 121
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "getWifiApConfiguration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :sswitch_1
    const-string v8, "isWifiApEnabled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v10

    goto :goto_2

    :sswitch_2
    const-string v8, "getWifiApState"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v11

    goto :goto_2

    :sswitch_3
    const-string v8, "setWifiApEnabled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, -0x1

    :goto_2
    if-eqz v7, :cond_5

    if-eq v7, v11, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    goto :goto_3

    :cond_2
    sput-object v6, Lcc/mvdan/accesspoint/WifiApControl;->setWifiApEnabledMethod:Ljava/lang/reflect/Method;

    goto :goto_3

    :cond_3
    sput-object v6, Lcc/mvdan/accesspoint/WifiApControl;->isWifiApEnabledMethod:Ljava/lang/reflect/Method;

    goto :goto_3

    :cond_4
    sput-object v6, Lcc/mvdan/accesspoint/WifiApControl;->getWifiApStateMethod:Ljava/lang/reflect/Method;

    goto :goto_3

    :cond_5
    sput-object v6, Lcc/mvdan/accesspoint/WifiApControl;->getWifiApConfigurationMethod:Ljava/lang/reflect/Method;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :cond_6
    new-instance v0, Lcc/mvdan/accesspoint/WifiApControl;

    invoke-direct {v0, p0}, Lcc/mvdan/accesspoint/WifiApControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcc/mvdan/accesspoint/WifiApControl;->instance:Lcc/mvdan/accesspoint/WifiApControl;

    .line 137
    invoke-virtual {v0}, Lcc/mvdan/accesspoint/WifiApControl;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    const-string v0, "WifiManager failed to init"

    .line 142
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_7
    :goto_5
    sget-object p0, Lcc/mvdan/accesspoint/WifiApControl;->instance:Lcc/mvdan/accesspoint/WifiApControl;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x89a70c5 -> :sswitch_3
        0x23400b97 -> :sswitch_2
        0x286ec373 -> :sswitch_1
        0x7f4c55fc -> :sswitch_0
    .end sparse-switch
.end method

.method private static varargs invokeQuietly(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string p1, "WifiApControl"

    const-string p2, ""

    .line 158
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public disable()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0, v0, v1}, Lcc/mvdan/accesspoint/WifiApControl;->setEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcc/mvdan/accesspoint/WifiApControl;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcc/mvdan/accesspoint/WifiApControl;->setEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public getConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcc/mvdan/accesspoint/WifiApControl;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    sget-object v0, Lcc/mvdan/accesspoint/WifiApControl;->getWifiApConfigurationMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcc/mvdan/accesspoint/WifiApControl;->wm:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 208
    invoke-static {v0, v1, v2}, Lcc/mvdan/accesspoint/WifiApControl;->invokeQuietly(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcc/mvdan/accesspoint/WifiApControl;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 4

    sget-object v0, Lcc/mvdan/accesspoint/WifiApControl;->isWifiApEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcc/mvdan/accesspoint/WifiApControl;->wm:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 167
    invoke-static {v0, v1, v3}, Lcc/mvdan/accesspoint/WifiApControl;->invokeQuietly(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 171
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 0

    .line 237
    invoke-virtual {p0, p1, p2}, Lcc/mvdan/accesspoint/WifiApControl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result p1

    return p1
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4

    sget-object v0, Lcc/mvdan/accesspoint/WifiApControl;->setWifiApEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcc/mvdan/accesspoint/WifiApControl;->wm:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 228
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcc/mvdan/accesspoint/WifiApControl;->invokeQuietly(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v3

    .line 232
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
