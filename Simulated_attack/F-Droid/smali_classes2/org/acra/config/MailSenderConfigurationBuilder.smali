.class public final Lorg/acra/config/MailSenderConfigurationBuilder;
.super Ljava/lang/Object;
.source "MailSenderConfigurationDsl.kt"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _defaultsBitField0:I

.field private final body$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final enabled$delegate:Lkotlin/properties/ReadWriteProperty;

.field private mailTo:Ljava/lang/String;

.field private final reportAsFile$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportFileName$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final subject$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 21
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "enabled"

    const-string v3, "getEnabled()Ljava/lang/Boolean;"

    const-class v4, Lorg/acra/config/MailSenderConfigurationBuilder;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 33
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "reportAsFile"

    const-string v3, "getReportAsFile()Ljava/lang/Boolean;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "reportFileName"

    const-string v3, "getReportFileName()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 45
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "subject"

    const-string v3, "getSubject()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "body"

    const-string v3, "getBody()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/acra/config/MailSenderConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->_defaultsBitField0:I

    .line 21
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 33
    new-instance v0, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lorg/acra/config/MailSenderConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->enabled$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$2;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Lorg/acra/config/MailSenderConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->reportAsFile$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$3;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$3;-><init>(Ljava/lang/Object;Lorg/acra/config/MailSenderConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->reportFileName$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$4;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$4;-><init>(Ljava/lang/Object;Lorg/acra/config/MailSenderConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->subject$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$5;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/MailSenderConfigurationBuilder$special$$inlined$observable$5;-><init>(Ljava/lang/Object;Lorg/acra/config/MailSenderConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->body$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$get_defaultsBitField0$p(Lorg/acra/config/MailSenderConfigurationBuilder;)I
    .locals 0

    .line 13
    iget p0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->_defaultsBitField0:I

    return p0
.end method

.method public static final synthetic access$set_defaultsBitField0$p(Lorg/acra/config/MailSenderConfigurationBuilder;I)V
    .locals 0

    .line 13
    iput p1, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->_defaultsBitField0:I

    return-void
.end method


# virtual methods
.method public final build()Lorg/acra/config/MailSenderConfiguration;
    .locals 11

    iget-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->mailTo:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v7, 0x4

    aput-object v5, v1, v7

    const/4 v8, 0x5

    aput-object v5, v1, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x6

    aput-object v5, v1, v9

    const-class v5, Lkotlin/jvm/internal/DefaultConstructorMarker;

    const/4 v10, 0x7

    aput-object v5, v1, v10

    const-class v5, Lorg/acra/config/MailSenderConfiguration;

    .line 104
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfigurationBuilder;->getEnabled()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v5, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->mailTo:Ljava/lang/String;

    aput-object v5, v0, v4

    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfigurationBuilder;->getReportAsFile()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 108
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfigurationBuilder;->getReportFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfigurationBuilder;->getSubject()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfigurationBuilder;->getBody()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    iget v2, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->_defaultsBitField0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    const/4 v2, 0x0

    aput-object v2, v0, v10

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "newInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/acra/config/MailSenderConfiguration;

    return-object v0

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mailTo must be assigned."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->body$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/MailSenderConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    .line 51
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEnabled()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->enabled$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/MailSenderConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    .line 21
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getReportAsFile()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->reportAsFile$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/MailSenderConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    .line 33
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getReportFileName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->reportFileName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/MailSenderConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    .line 39
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->subject$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/MailSenderConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    .line 45
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final setReportFileName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->reportFileName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/MailSenderConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    .line 39
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->subject$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/MailSenderConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    .line 45
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final withMailTo(Ljava/lang/String;)Lorg/acra/config/MailSenderConfigurationBuilder;
    .locals 1

    .line 0
    const-string v0, "mailTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/acra/config/MailSenderConfigurationBuilder;->mailTo:Ljava/lang/String;

    return-object p0
.end method

.method public final withReportFileName(Ljava/lang/String;)Lorg/acra/config/MailSenderConfigurationBuilder;
    .locals 1

    const-string v0, "reportFileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/acra/config/MailSenderConfigurationBuilder;->setReportFileName(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withSubject(Ljava/lang/String;)Lorg/acra/config/MailSenderConfigurationBuilder;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/acra/config/MailSenderConfigurationBuilder;->setSubject(Ljava/lang/String;)V

    return-object p0
.end method
