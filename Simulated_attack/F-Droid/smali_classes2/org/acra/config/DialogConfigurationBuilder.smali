.class public final Lorg/acra/config/DialogConfigurationBuilder;
.super Ljava/lang/Object;
.source "DialogConfigurationDsl.kt"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _defaultsBitField0:I

.field private final commentPrompt$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final emailPrompt$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final enabled$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final negativeButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final positiveButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportDialogClass$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final resIcon$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final resTheme$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final text$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final title$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 23
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "enabled"

    const-string v3, "getEnabled()Ljava/lang/Boolean;"

    const-class v4, Lorg/acra/config/DialogConfigurationBuilder;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 30
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "reportDialogClass"

    const-string v3, "getReportDialogClass()Ljava/lang/Class;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "positiveButtonText"

    const-string v3, "getPositiveButtonText()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 42
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "negativeButtonText"

    const-string v3, "getNegativeButtonText()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "commentPrompt"

    const-string v3, "getCommentPrompt()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 54
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "emailPrompt"

    const-string v3, "getEmailPrompt()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "resIcon"

    const-string v3, "getResIcon()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 67
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "text"

    const-string v3, "getText()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 73
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "title"

    const-string v3, "getTitle()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 79
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "resTheme"

    const-string v3, "getResTheme()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->_defaultsBitField0:I

    .line 23
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->enabled$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$2;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->reportDialogClass$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$3;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$3;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->positiveButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$4;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$4;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->negativeButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$5;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$5;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->commentPrompt$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$6;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$6;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->emailPrompt$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$7;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$7;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->resIcon$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$8;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$8;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->text$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$9;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$9;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->title$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$10;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/DialogConfigurationBuilder$special$$inlined$observable$10;-><init>(Ljava/lang/Object;Lorg/acra/config/DialogConfigurationBuilder;)V

    iput-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->resTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$get_defaultsBitField0$p(Lorg/acra/config/DialogConfigurationBuilder;)I
    .locals 0

    .line 15
    iget p0, p0, Lorg/acra/config/DialogConfigurationBuilder;->_defaultsBitField0:I

    return p0
.end method

.method public static final synthetic access$set_defaultsBitField0$p(Lorg/acra/config/DialogConfigurationBuilder;I)V
    .locals 0

    .line 15
    iput p1, p0, Lorg/acra/config/DialogConfigurationBuilder;->_defaultsBitField0:I

    return-void
.end method


# virtual methods
.method public final build()Lorg/acra/config/DialogConfiguration;
    .locals 15

    .line 164
    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getReportDialogClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One of reportDialogClass, text must be assigned."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const/4 v7, 0x4

    aput-object v5, v1, v7

    const/4 v8, 0x5

    aput-object v5, v1, v8

    const/4 v9, 0x6

    const-class v10, Ljava/lang/Integer;

    aput-object v10, v1, v9

    const/4 v11, 0x7

    aput-object v5, v1, v11

    const/16 v12, 0x8

    aput-object v5, v1, v12

    const/16 v5, 0x9

    aput-object v10, v1, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v13, 0xa

    aput-object v10, v1, v13

    const-class v10, Lkotlin/jvm/internal/DefaultConstructorMarker;

    const/16 v14, 0xb

    aput-object v10, v1, v14

    const-class v10, Lorg/acra/config/DialogConfiguration;

    .line 166
    invoke-virtual {v10, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getEnabled()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_1

    :cond_2
    move v10, v3

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v0, v3

    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getReportDialogClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v4

    .line 171
    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getCommentPrompt()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getEmailPrompt()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getResIcon()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    .line 172
    invoke-virtual {p0}, Lorg/acra/config/DialogConfigurationBuilder;->getResTheme()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    iget v2, p0, Lorg/acra/config/DialogConfigurationBuilder;->_defaultsBitField0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v13

    const/4 v2, 0x0

    aput-object v2, v0, v14

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "newInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/acra/config/DialogConfiguration;

    return-object v0
.end method

.method public final getCommentPrompt()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->commentPrompt$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    .line 48
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailPrompt()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->emailPrompt$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    .line 54
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEnabled()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->enabled$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    .line 23
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getNegativeButtonText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->negativeButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    .line 42
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPositiveButtonText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->positiveButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    .line 36
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getReportDialogClass()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->reportDialogClass$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    .line 30
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getResIcon()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->resIcon$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    .line 60
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getResTheme()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->resTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    .line 79
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->text$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    .line 67
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->title$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    .line 73
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final setCommentPrompt(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->commentPrompt$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    .line 48
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setResTheme(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->resTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    .line 79
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->text$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    .line 67
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/acra/config/DialogConfigurationBuilder;->title$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/DialogConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    .line 73
    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final withCommentPrompt(Ljava/lang/String;)Lorg/acra/config/DialogConfigurationBuilder;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lorg/acra/config/DialogConfigurationBuilder;->setCommentPrompt(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withResTheme(Ljava/lang/Integer;)Lorg/acra/config/DialogConfigurationBuilder;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lorg/acra/config/DialogConfigurationBuilder;->setResTheme(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final withText(Ljava/lang/String;)Lorg/acra/config/DialogConfigurationBuilder;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lorg/acra/config/DialogConfigurationBuilder;->setText(Ljava/lang/String;)V

    return-object p0
.end method

.method public final withTitle(Ljava/lang/String;)Lorg/acra/config/DialogConfigurationBuilder;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lorg/acra/config/DialogConfigurationBuilder;->setTitle(Ljava/lang/String;)V

    return-object p0
.end method
