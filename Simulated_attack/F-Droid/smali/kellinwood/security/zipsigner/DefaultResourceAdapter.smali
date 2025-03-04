.class public Lkellinwood/security/zipsigner/DefaultResourceAdapter;
.super Ljava/lang/Object;
.source "DefaultResourceAdapter.java"

# interfaces
.implements Lkellinwood/security/zipsigner/ResourceAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs getString(Lkellinwood/security/zipsigner/ResourceAdapter$Item;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 13
    sget-object v0, Lkellinwood/security/zipsigner/DefaultResourceAdapter$1;->$SwitchMap$kellinwood$security$zipsigner$ResourceAdapter$Item:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 29
    :pswitch_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aget-object v2, p2, v1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object p2, p2, v1

    aput-object p2, v0, v1

    const-string p2, "Copying zip entry %d of %d"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "Generating signature block file"

    return-object p1

    :pswitch_2
    const-string p1, "Generating signature file"

    return-object p1

    :pswitch_3
    const-string p1, "Generating manifest"

    return-object p1

    :pswitch_4
    const-string p1, "Parsing the input\'s central directory"

    return-object p1

    :pswitch_5
    const-string p1, "Loading certificate and private key"

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to auto-select key for signing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-string p1, "Input and output files are the same.  Specify a different name for the output."

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
