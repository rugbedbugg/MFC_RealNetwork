.class public Lorg/fdroid/fdroid/Utils$HtmlTagHandler;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtmlTagHandler"
.end annotation


# instance fields
.field listNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 2

    .line 641
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p4, :sswitch_data_0

    :goto_0
    move p2, v1

    goto :goto_1

    :sswitch_0
    const-string p4, "ul"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_1

    :sswitch_1
    const-string p4, "ol"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_1

    :sswitch_2
    const-string p4, "li"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const/16 p4, 0xa

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p1, :cond_3

    iput v1, p0, Lorg/fdroid/fdroid/Utils$HtmlTagHandler;->listNum:I

    goto :goto_2

    .line 646
    :cond_3
    invoke-interface {p3, p4}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    goto :goto_2

    :pswitch_1
    if-eqz p1, :cond_4

    iput v0, p0, Lorg/fdroid/fdroid/Utils$HtmlTagHandler;->listNum:I

    goto :goto_2

    .line 653
    :cond_4
    invoke-interface {p3, p4}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    goto :goto_2

    :pswitch_2
    if-eqz p1, :cond_6

    iget p1, p0, Lorg/fdroid/fdroid/Utils$HtmlTagHandler;->listNum:I

    if-ne p1, v1, :cond_5

    const-string p1, "\t\u2022 "

    .line 659
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    :cond_5
    const-string p1, "\t"

    .line 661
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    iget p2, p0, Lorg/fdroid/fdroid/Utils$HtmlTagHandler;->listNum:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    const-string p2, ". "

    invoke-interface {p1, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iget p1, p0, Lorg/fdroid/fdroid/Utils$HtmlTagHandler;->listNum:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/fdroid/fdroid/Utils$HtmlTagHandler;->listNum:I

    goto :goto_2

    .line 665
    :cond_6
    invoke-interface {p3, p4}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xd7d -> :sswitch_2
        0xddd -> :sswitch_1
        0xe97 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
