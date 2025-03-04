.class public final Landroidx/compose/ui/text/PlatformParagraphStyle;
.super Ljava/lang/Object;
.source "AndroidTextStyle.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

.field private static final Default:Landroidx/compose/ui/text/PlatformParagraphStyle;


# instance fields
.field private final emojiSupportMatch:I

.field private final includeFontPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    .line 118
    new-instance v0, Landroidx/compose/ui/text/PlatformParagraphStyle;

    invoke-direct {v0}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->Default:Landroidx/compose/ui/text/PlatformParagraphStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 184
    sget-object v0, Landroidx/compose/ui/text/EmojiSupportMatch;->Companion:Landroidx/compose/ui/text/EmojiSupportMatch$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/EmojiSupportMatch$Companion;->getDefault-_3YsG6Y()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    iput p1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 152
    sget-object p1, Landroidx/compose/ui/text/EmojiSupportMatch;->Companion:Landroidx/compose/ui/text/EmojiSupportMatch$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/EmojiSupportMatch$Companion;->getDefault-_3YsG6Y()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/ui/text/PlatformParagraphStyle;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->Default:Landroidx/compose/ui/text/PlatformParagraphStyle;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 189
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 190
    check-cast p1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget-boolean v3, p1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 191
    iget p1, p1, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    invoke-static {v1, p1}, Landroidx/compose/ui/text/EmojiSupportMatch;->equals-impl0(II)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEmojiSupportMatch-_3YsG6Y()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    return v0
.end method

.method public final getIncludeFontPadding()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 196
    invoke-static {v0}, Landroidx/compose/foundation/ClickableElement$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 197
    invoke-static {v1}, Landroidx/compose/ui/text/EmojiSupportMatch;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final merge(Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformParagraphStyle;
    .locals 0

    .line 0
    if-nez p1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformParagraphStyle(includeFontPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", emojiSupportMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    invoke-static {v1}, Landroidx/compose/ui/text/EmojiSupportMatch;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
