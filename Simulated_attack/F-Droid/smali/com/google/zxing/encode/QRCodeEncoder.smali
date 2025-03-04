.class public final Lcom/google/zxing/encode/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# instance fields
.field private contents:Ljava/lang/String;

.field private final dimension:I

.field private displayContents:Ljava/lang/String;

.field private final encoded:Z

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/google/zxing/encode/QRCodeEncoder;->dimension:I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/encode/QRCodeEncoder;->encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->encoded:Z

    return-void
.end method

.method private encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    if-eqz p4, :cond_0

    .line 69
    :try_start_0
    invoke-static {p4}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object p4

    iput-object p4, p0, Lcom/google/zxing/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p4, p0, Lcom/google/zxing/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    if-eqz p4, :cond_2

    .line 74
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne p4, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Text"

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    sget-object p4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object p4, p0, Lcom/google/zxing/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/encode/QRCodeEncoder;->encodeQRCodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method private encodeQRCodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    .line 86
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "EMAIL_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "TEXT_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "LOCATION_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "SMS_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "CONTACT_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "PHONE_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 95
    :pswitch_0
    invoke-static {p1}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mailto:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "E-Mail"

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_1
    if-eqz p1, :cond_11

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_11

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Text"

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_2
    if-eqz p2, :cond_11

    const-string p1, "LAT"

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 189
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    const-string v0, "LONG"

    .line 190
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    cmpl-float v0, p1, p3

    if-eqz v0, :cond_11

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_11

    .line 192
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "geo:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Location"

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_5

    .line 111
    :pswitch_3
    invoke-static {p1}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sms:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "SMS"

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_4
    if-eqz p2, :cond_11

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "MECARD:"

    .line 123
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "name"

    .line 125
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0x3b

    if-eqz p3, :cond_6

    const-string v3, "N:"

    .line 127
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/google/zxing/encode/QRCodeEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string p3, "postal"

    .line 131
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v3, 0xa

    if-eqz p3, :cond_7

    const-string v4, "ADR:"

    .line 133
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/google/zxing/encode/QRCodeEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_7
    new-instance p3, Ljava/util/HashSet;

    sget-object v4, Lcom/google/zxing/encode/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {p3, v4}, Ljava/util/HashSet;-><init>(I)V

    move v4, v1

    .line 138
    :goto_1
    sget-object v5, Lcom/google/zxing/encode/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_9

    .line 139
    aget-object v5, v5, v4

    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 141
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 144
    :cond_9
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "TEL:"

    .line 145
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/google/zxing/encode/QRCodeEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 149
    :cond_a
    new-instance p3, Ljava/util/HashSet;

    sget-object v4, Lcom/google/zxing/encode/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {p3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 150
    :goto_3
    sget-object v4, Lcom/google/zxing/encode/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_c

    .line 151
    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 153
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 156
    :cond_c
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "EMAIL:"

    .line 157
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/zxing/encode/QRCodeEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    const-string p3, "URL_KEY"

    .line 161
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_e

    const-string v1, "URL:"

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string p3, "NOTE_KEY"

    .line 168
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    const-string p3, "NOTE:"

    .line 170
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/google/zxing/encode/QRCodeEncoder;->escapeMECARD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_10

    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Contact"

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_5

    .line 103
    :pswitch_5
    invoke-static {p1}, Lcom/google/zxing/encode/QRCodeEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tel:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    const-string p1, "Phone"

    iput-object p1, p0, Lcom/google/zxing/encode/QRCodeEncoder;->title:Ljava/lang/String;

    :cond_11
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4e09e475 -> :sswitch_5
        -0x27f26fe7 -> :sswitch_4
        0x2a45da80 -> :sswitch_3
        0x506b3984 -> :sswitch_2
        0x6a03370c -> :sswitch_1
        0x6d46ba1d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static escapeMECARD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_4

    const/16 v0, 0x3a

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x3b

    if-gez v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 253
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v0, :cond_1

    if-ne v5, v2, :cond_2

    :cond_1
    const/16 v6, 0x5c

    .line 255
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 230
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 231
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const-string p0, "UTF-8"

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public encodeAsBitmap()Landroid/graphics/Bitmap;
    .locals 10

    iget-boolean v0, p0, Lcom/google/zxing/encode/QRCodeEncoder;->encoded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 205
    invoke-static {v0}, Lcom/google/zxing/encode/QRCodeEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 208
    sget-object v2, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v8, v1

    .line 210
    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    iget-object v4, p0, Lcom/google/zxing/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    iget v7, p0, Lcom/google/zxing/encode/QRCodeEncoder;->dimension:I

    move v6, v7

    .line 211
    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 213
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 214
    new-array v2, v1, [I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v8, :cond_4

    mul-int v4, v3, v7

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_3

    add-int v6, v4, v5

    .line 219
    invoke-virtual {v0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_2

    const/high16 v9, -0x1000000

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    :goto_2
    aput v9, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v4, v7

    .line 224
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method
